<?php

namespace PC\ExchangeBundle\Service;

use PC\ExchangeBundle\Entity\Element;
use PC\ExchangeBundle\Entity\Criterion;
use PC\ExchangeBundle\Entity\ReviewCriterion;
use PC\ExchangeBundle\Entity\Review;
use Doctrine\ORM\EntityManager;

class ReviewManager
{
    protected $em;

    public function __construct(EntityManager $em)
    {
        //$this->getDoctrine()->getManager()
        $this->em = $em;
    }

    public function hydrateReview($reviewData, $user, $elementId)
    {

        $review = new Review();

        $review
            ->setUser($user)
            ->setReview($reviewData->getReview())
            ->setScore($reviewData->getScore())
            ->setElement($this->em->getRepository(Element::class)
                ->find($elementId)
            );

        foreach($reviewData->getReviewCriterions()->getIterator() as $i => $criterion) {

            $reviewCriterion = new ReviewCriterion();

            $reviewCriterion
                ->setCriterion($this->em->getRepository(Criterion::class)
                    ->findOneBy(array('critName' => $criterion->getCriterion()->getCritName())))
                ->setFlavouring($criterion->getFlavouring())
                ->setBias($criterion->getBias())
                ->setReview($review)
                ;

            $this->em->persist($reviewCriterion);

        }

        $this->em->persist($review);
        $this->em->flush();
    }

    public function myEditReview($reviewData, $existingReview)
    {
        $rcToDelete = $this->em->getRepository(ReviewCriterion::class)->findByReview($existingReview);

        $existingReview
            ->setReview($reviewData->getReview())
            ->setScore($reviewData->getScore())
            ->getReviewCriterions()->removeElement($rcToDelete)
            ;






        /*foreach($reviewData->getReviewCriterions()->getIterator() as $i => $criterion) {
            //$existingReview->addReviewCriterion($criterion);
            $reviewCriterion = new ReviewCriterion();

            $reviewCriterion
                ->setCriterion($this->em->getRepository(Criterion::class)
                    ->findOneBy(array('critName' => $criterion->getCriterion()->getCritName())))
                ->setFlavouring($criterion->getFlavouring())
                ->setBias($criterion->getBias())
                ->setReview($existingReview)
                ;

            $this->em->persist($reviewCriterion);
        }*/

        $this->em->persist($existingReview);
        $this->em->flush();
    }
}
