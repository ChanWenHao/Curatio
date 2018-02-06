<?php

namespace PC\ExchangeBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\CollectionType;
use PC\ExchangeBundle\Form\ReviewCriterionType;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ReviewType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('review')
            ->add('score')
            ->add('reviewCriterions', CollectionType::class, array(
                'entry_type' => ReviewCriterionType::class,
                'allow_add' => true,
                'allow_delete' => true
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
            'data_class' => 'PC\ExchangeBundle\Entity\Review'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'pc_exchangebundle_review';
    }


}
