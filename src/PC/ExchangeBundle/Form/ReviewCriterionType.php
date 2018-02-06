<?php

namespace PC\ExchangeBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use PC\ExchangeBundle\Form\CriterionType;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ReviewCriterionType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            /*->add('criterion', EntityType::class, array(
                'class' => Criterion::class,
                'multiple' => true,
                'expanded' => true,
                'choice_label' => 'critName',
                'choice_value' => 'id',
                'required' => false,
                'choice_attr' => function() {
                    return['class' => 'criterionInput'];
                },
            ))*/
            ->add('criterion', CriterionType::class)
            ->add('flavouring')
            ->add('bias')
            ;
    }

    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'PC\ExchangeBundle\Entity\ReviewCriterion'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'pc_exchangebundle_reviewcriterion';
    }


}
