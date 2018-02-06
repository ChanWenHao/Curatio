<?php

namespace PC\ExchangeBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Table(name="review_criterion")
 * @ORM\Entity
 */

class ReviewCriterion
{
    /**
     *@ORM\ManyToOne(targetEntity="PC\ExchangeBundle\Entity\Criterion")
     */
    private $criterion;

    /**
     *@ORM\ManyToOne(targetEntity="PC\ExchangeBundle\Entity\Review", inversedBy="reviewCriterions")
     */
    private $review;

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
     * @ORM\column(name="flavouring", type="string", length=140, nullable = true)
     */
    private $flavouring;

    /**
     * @var boolean
     *
     * @ORM\column(name="bias", type="boolean", nullable = true)
     */
    private $bias;

    /**
     * get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * set criterion
     *
     * @param PC\ExchangeBundle\Entity\Criterion $criterion
     *
     * @return Criterion
     */
    public function setCriterion(\PC\ExchangeBundle\Entity\Criterion $criterion)
    {
        $this->criterion = $criterion;

        return $this;
    }

    /**
     * get criterion
     *
     * @return PC\ExchangeBundle\Entity\Criterion
     */
    public function getCriterion()
    {
        return $this->criterion;
    }

    /**
     * Set review
     *
     * @param \PC\ExchangeBundle\Entity\Review $review
     *
     * @return ReviewCriterion
     */
    public function setReview(\PC\ExchangeBundle\Entity\Review $review = null)
    {
        $this->review = $review;

        return $this;
    }

    /**
     * Get review
     *
     * @return \PC\ExchangeBundle\Entity\Review
     */
    public function getReview()
    {
        return $this->review;
    }

    /**
     * Set flavouring
     *
     * @param string $flavouring
     *
     * @return ReviewCriterion
     */
    public function setFlavouring($flavouring)
    {
        $this->flavouring = $flavouring;

        return $this;
    }

    /**
     * Get flavouring
     *
     * @return string
     */
    public function getFlavouring()
    {
        return $this->flavouring;
    }

    /**
     * Set bias
     *
     * @param boolean $bias
     *
     * @return ReviewCriterion
     */
    public function setBias($bias)
    {
        $this->bias = $bias;

        return $this;
    }

    /**
     * Get bias
     *
     * @return boolean
     */
    public function getBias()
    {
        return $this->bias;
    }
}
