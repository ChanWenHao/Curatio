<?php

namespace PC\ExchangeBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\SearchType;
use Symfony\Component\Form\Extension\Core\Type\CollectionType;
use PC\ExchangeBundle\Form\ImageType;
use PC\ExchangeBundle\Form\ElementArtistType;
use PC\ExchangeBundle\Entity\Category;
use PC\ExchangeBundle\Entity\Image;
use PC\ExchangeBundle\Entity\Publisher;
use PC\ExchangeBundle\Entity\Type;

class ElementType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title')
            ->add('elementArtists',  CollectionType::class, array(
                    'entry_type' => ElementArtistType::class,
                    'allow_add' => true,
                    'allow_delete' => true
                ))
            ->add('publicationDate')
            ->add('publisher', EntityType::class, array(
                    'class' => Publisher::class,
                    'choice_label' => 'publisherName',
                    'choice_value' => 'id'
                ))
            ->add('iSBN')
            ->add('synopsis')
            ->add('image', ImageType::class)
            ->add('searchField', SearchType::class, array(
                    'mapped' => false,
                    'required' => false,
                    'attr' => array(
                        'placeholder' => 'search'
                    )
                ))
            ->add('searchSubmit', SubmitType::class, array(
                    'label' => ' '
                ))
            ->add('categories', EntityType::class, array(
                    'class' => Category::class,
                    'multiple' => true,
                    'expanded' => true,
                    'choice_label' => 'category',
                    'choice_value' => 'id',
                    'required' => false,
                    'choice_attr' => function() {
                        return['class' => 'categoryCheck'];
                    }

                ))
            ->add('type', EntityType::class, array(
                    'class' => Type::class,
                    'expanded' => true,
                    'choice_label' => 'type',
                    'choice_value' => 'id',
                ))
            ->add('submit', SubmitType::class)
        ;
    }

    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'PC\ExchangeBundle\Entity\Element',
            //'data_class' => null,
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'pc_exchangebundle_element';
    }


}
