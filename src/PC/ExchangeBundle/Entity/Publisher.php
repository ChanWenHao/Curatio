<?php

namespace PC\ExchangeBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Publisher
 *
 * @ORM\Table(name="publisher")
 * @ORM\Entity(repositoryClass="PC\ExchangeBundle\Repository\PublisherRepository")
 */
class Publisher
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
     * @ORM\Column(name="publisherName", type="string", length=30, unique=true)
     */
    private $publisherName;

    /**
     * @var string
     *
     * @ORM\Column(name="history", type="text", nullable=true)
     */
    private $history;


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
     * Set publisherName
     *
     * @param string $publisherName
     *
     * @return Publisher
     */
    public function setPublisherName($publisherName)
    {
        $this->publisherName = $publisherName;

        return $this;
    }

    /**
     * Get publisherName
     *
     * @return string
     */
    public function getPublisherName()
    {
        return $this->publisherName;
    }

    /**
     * Set history
     *
     * @param string $history
     *
     * @return Publisher
     */
    public function setHistory($history)
    {
        $this->history = $history;

        return $this;
    }

    /**
     * Get history
     *
     * @return string
     */
    public function getHistory()
    {
        return $this->history;
    }
}

