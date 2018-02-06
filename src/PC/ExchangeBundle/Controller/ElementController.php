<?php

// src/PC/ExchangeBundle/Controller/IntroController.phpinfo

namespace PC\ExchangeBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use PC\ExchangeBundle\Entity\Element;
use PC\ExchangeBundle\Entity\Image;
use PC\ExchangeBundle\Entity\Category;
use PC\ExchangeBundle\Entity\Artist;
use PC\ExchangeBundle\Form\ElementType;

class ElementController extends Controller
{

    public function indexAction(Request $request)
    {
        //form a partir d'une entité
        $form = $this->createForm(ElementType::class);
        $repo = $this->getDoctrine()->getRepository(Element::class);
        $elt = new Element();
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()) {
            if($form->get('searchSubmit')->isClicked()) {
                $elt = $repo->mySearch($form->get('searchField')->getData());
            }
            else {
                $data = $form->getData();
                $elt = $repo->myFindByCategory($data->getCategories(), $data->getType());
            }
        }
        else {
            $elt = $repo->findAll();
        }

        return $this->render('PCExchangeBundle:Element:index.html.twig', array(
            'listElements' => $elt,
            'form' => $form->createView(),
        ));
    }

    public function viewAction($id)
    {

        $repo = $this->getDoctrine()->getRepository(Element::class);

        $element = $repo->find($id);

        return $this->render('PCExchangeBundle:Element:view.html.twig', array(
            'content' => $element
        ));
    }

    public function addAction(Request $request)
    {

        if(!$this->get('security.authorization_checker')->isGranted('IS_AUTHENTICATED_FULLY')) {
            throw $this->createAccessDeniedException('vous devez être authentifié pour créer une entrée');
        }

        $form = $this->createForm(ElementType::class);
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()) {
            //appel du service custom ElementManager
            $elementManager = $this->container->get('pc_exchange.elementmanager');

            $elementManager->hydrateElement($formData = $form->getData());

            return $this->redirectToRoute('pc_exchange_home');
        }

        return $this->render('PCExchangeBundle:Element:form.html.twig', array(
            'form' => $form->createView(),
        ));

    }

}
