<?php

namespace PC\ExchangeBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Table(name="element_artist")
 * @ORM\Entity
 */

class ElementArtist
{
    /**
     *@ORM\ManyToOne(targetEntity="PC\ExchangeBundle\Entity\Element", inversedBy="elementArtists")
     */
    private $element;

    /**
     *@ORM\ManyToOne(targetEntity="PC\ExchangeBundle\Entity\Artist", cascade={"persist"})
     */
    private $artist;

    /**
     *@ORM\ManyToOne(targetEntity="PC\ExchangeBundle\Entity\Role")
     */
    private $role;

    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;



    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set element
     *
     * @param \PC\ExchangeBundle\Entity\Element $element
     *
     * @return ElementArtist
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
     * Set artist
     *
     * @param \PC\ExchangeBundle\Entity\Artist $artist
     *
     * @return ElementArtist
     */
    public function setArtist(\PC\ExchangeBundle\Entity\Artist $artist = null)
    {
        $this->artist = $artist;

        return $this;
    }

    /**
     * Get artist
     *
     * @return \PC\ExchangeBundle\Entity\Artist
     */
    public function getArtist()
    {
        return $this->artist;
    }

    /**
     * Set role
     *
     * @param \PC\ExchangeBundle\Entity\Role $role
     *
     * @return ElementArtist
     */
    public function setRole(\PC\ExchangeBundle\Entity\Role $role = null)
    {
        $this->role = $role;

        return $this;
    }

    /**
     * Get role
     *
     * @return \PC\ExchangeBundle\Entity\Role
     */
    public function getRole()
    {
        return $this->role;
    }
}
