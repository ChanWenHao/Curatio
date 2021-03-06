<?php

namespace PC\ExchangeBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;
use PC\ExchangeBundle\Entity\ReviewCriterion;

/**
 * Review
 *
 * @ORM\Table(name="review")
 * @ORM\Entity(repositoryClass="PC\ExchangeBundle\Repository\ReviewRepository")
 */
class Review
{

    /**
     *@ORM\ManyToOne(targetEntity="PC\UserBundle\Entity\User")
     */
    private $user;

    /**
     *@ORM\ManyToOne(targetEntity="PC\ExchangeBundle\Entity\Element")
     */
    private $element;

    /**
     *@ORM\OneToMany(targetEntity="PC\ExchangeBundle\Entity\ReviewCriterion", mappedBy="review", cascade={"remove", "persist"}, orphanRemoval=true)
     */
    private $reviewCriterions;

    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="review", type="text")
     */
    private $review;

    /**
     * @var int
     *
     * @ORM\Column(name="score", type="integer")
     */
    private $score;

    /**
     * @ORM\Column(name="date", type="date")
     */
    private $date;


    public function __construct()
    {
        $this->reviewCriterions = new ArrayCollection();

        $this->date = new \DateTime();
    }

    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set review
     *
     * @param string $review
     *
     * @return Review
     */
    public function setReview($review)
    {
        $this->review = $review;

        return $this;
    }

    /**
     * Get review
     *
     * @return string
     */
    public function getReview()
    {
        return $this->review;
    }

    /**
     * Set score
     *
     * @param integer $score
     *
     * @return Review
     */
    public function setScore($score)
    {
        $this->score = $score;

        return $this;
    }

    /**
     * Get score
     *
     * @return int
     */
    public function getScore()
    {
        return $this->score;
    }

    /**
     * Set user
     *
     * @param \PC\UserBundle\Entity\User $user
     *
     * @return Review
     */
    public function setUser(\PC\UserBundle\Entity\User $user = null)
    {
        $this->user = $user;

        return $this;
    }

    /**
     * Get user
     *
     * @return \PC\UserBundle\Entity\User
     */
    public function getUser()
    {
        return $this->user;
    }

    /**
     * Set element
     *
     * @param \PC\ExchangeBundle\Entity\Element $element
     *
     * @return Review
     */
    public function setElement(\PC\ExchangeBundle\Entity\Element $element = null)
    {
        $this->element = $element;

        return $this;
    }

    /**
     * Get element
     *
     * @return \PC\ExchangeBundle\Entity\Element
     */
    public function getElement()
    {
        return $this->element;
    }

    /**
     * Set date
     *
     * @param \DateTime $date
     *
     * @return Review
     */
    public function setDate($date)
    {
        $this->date = $date;

        return $this;
    }

    /**
     * Get date
     *
     * @return \DateTime
     */
    public function getDate()
    {
        return $this->date;
    }


    /**
     * Add reviewCriterion
     *
     * @param \PC\ExchangeBundle\Entity\ReviewCriterion $reviewCriterion
     *
     * @return Review
     */
    public function addReviewCriterion(\PC\ExchangeBundle\Entity\ReviewCriterion $reviewCriterion)
    {
        $this->reviewCriterions[] = $reviewCriterion;

        return $this;
    }

    /**
     * Remove reviewCriterion
     *
     * @param \PC\ExchangeBundle\Entity\ReviewCriterion $reviewCriterion
     */
    public function removeReviewCriterion(\PC\ExchangeBundle\Entity\ReviewCriterion $reviewCriterion)
    {
        $this->reviewCriterions->removeElement($reviewCriterion);
    }

    /**
     * Get reviewCriterions
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getReviewCriterions()
    {
        return $this->reviewCriterions;
    }

}
