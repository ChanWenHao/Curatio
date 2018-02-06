<?php

namespace PC\ExchangeBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Criterion
 *
 * @ORM\Table(name="criterion")
 * @ORM\Entity(repositoryClass="PC\ExchangeBundle\Repository\CriterionRepository")
 */
class Criterion
{

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
     * @ORM\Column(name="critName", type="string", length=30, unique=true)
     */
    private $critName;

    /**
     * @var string
     *
     * @ORM\Column(name="description", type="text", nullable=true)
     */
    private $description;


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
     * Set critName
     *
     * @param string $critName
     *
     * @return Criterion
     */
    public function setCritName($critName)
    {
        $this->critName = $critName;

        return $this;
    }

    /**
     * Get critName
     *
     * @return string
     */
    public function getCritName()
    {
        return $this->critName;
    }

    /**
     * Set description
     *
     * @param string $description
     *
     * @return Criterion
     */
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get description
     *
     * @return string
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set review
     *
     * @param \PC\ExchangeBundle\Entity\Review $review
     *
     * @return Criterion
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
}
