<?php

namespace PC\ExchangeBundle\Service;
use Sensio\Bundle\FrameworkExtraBundle\Templating\TemplateGuesser;
use Doctrine\ORM\EntityManager;
use PC\ExchangeBundle\Entity\Element;
use PC\ExchangeBundle\Entity\Artist;
use PC\ExchangeBundle\Entity\ElementArtist;
use PC\ExchangeBundle\Entity\Image;

class ElementManager
{
    protected $em;

    public function __construct(EntityManager $em)
    {
        $this->em = $em;
    }

    public function hydrateElement($formData)
    {
        $element = new Element();
        //hydratation d'élément
        $element
            ->setTitle($formData->getTitle())
            ->setType($formData->getType())
            ->setPublisher($formData->getPublisher())
            ->setPublicationDate(new \DateTime())
            ->setSynopsis($formData->getSynopsis())
            ;

        foreach($formData->getCategories() as $categorie) {
            $element->addCategory($categorie);
        }

        foreach($formData->getElementArtists()->getIterator() as $author) {
            $elementArtist = new ElementArtist();
            $elementArtist
                ->setElement($element)
                ->setArtist($author->getArtist())
                ->setRole($author->getRole())
                ;
            $this->em->persist($elementArtist);
        }
        //hydratation d'image
        $image = new Image();

        $image->setUrl($formData->getImage()->getUrl());

        $element->setImage($image);

        $this->em->persist($element);
        $this->em->flush();
        /*$session = $request->getSession();

        $session->getFlashBag()->add('info', 'bien reçu');*/

    }
}
