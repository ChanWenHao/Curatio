<?php

namespace PC\ExchangeBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use PC\ExchangeBundle\Form\ArtistType;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use PC\ExchangeBundle\Entity\Role;

class ElementArtistType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('artist', ArtistType::class)
            ->add('role', EntityType::class, array(
                    'class' => Role::class,
                    'choice_label' => 'role',
                    'choice_value' => 'id'
                ));
    }

    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'PC\ExchangeBundle\Entity\ElementArtist'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'pc_exchangebundle_elementartist';
    }


}
