<?php

namespace PC\ExchangeBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use PC\ExchangeBundle\Entity\User;
use PC\ExchangeBundle\Form\UserType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class SubscriptionController extends Controller
{

    public function formAction(Request $request)
    {
        $user = new User();

        $form = $this->createForm(UserType::class, $user);

        $form->handleRequest($request);

        if($form->isValid())
        {

            $em = $this->getDoctrine()->getManager();
            $em->persist($user);
            $em->flush();

            $session = $request->getSession();

            $session->getFlashBag()->add('info', 'inscription validée');

            return $this->redirectToRoute(
                'pc_exchange_subscribe',
                array('form' => $form->createView())
            );
        }

        return $this->render(
            'PCExchangeBundle:Subscription:form.html.twig',
            array('form' => $form->createView())
        );
    }

}
