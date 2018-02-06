<?php

namespace PC\UserBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class ConnectController extends Controller {

    public function loginAction(Request $request) {

        if($this->get('security.authorization_checker')->isGranted('IS_AUTHENTICATED_REMEMBERED')) {
            return $this->redirectToRoute('pc_exchange_home');
        }

        $authUtils = $this->get('security.authentication_utils');

        return $this->render('PCUserBundle:Subscription:login.html.twig', array(
            'last_username' => $authUtils->getLastUsername(),
            'error' => $authUtils->getLastAuthenticationError(),
        ));
    }
}
