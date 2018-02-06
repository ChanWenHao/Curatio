<?php

namespace PC\ExchangeBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use PC\ExchangeBundle\Entity\Review;
use PC\ExchangeBundle\Entity\Criterion;
use PC\ExchangeBundle\Form\ReviewType;
use PC\UserBundle\Entity\User;
use Symfony\Component\Security\Core\Exception\AccessDeniedException;

class ReviewController extends Controller
{
    public function addAction(Request $request)
    {
        $eltId = $request->query->get('id');
        $loggedUser = $this->get('security.token_storage')->getToken()->getUser();
        $eltReview = $this->getDoctrine()->getRepository(Review::class)->findOneBy(array(
            'user' => $loggedUser,
            'element' => $eltId
        ));

        if(!$this->get('security.authorization_checker')->isGranted('IS_AUTHENTICATED_FULLY')) {
            throw $this->createAccessDeniedException('vous devez être identifié pour accéder à cette section');
        }

        if($eltReview != null) {
            $session = $request->getSession();
            $session->getFlashBag()->add('error', 'vous avez déjà enregistré une critique pour cet élément');

            return $this->redirectToRoute('pc_exchange_view', array('id' => $eltId ));
        }

        $form = $this->createForm(ReviewType::class);
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()) {
            //appel du service custom ReviewManager
            $reviewManager = $this->container->get('pc_exchange.reviewmanager');

            $reviewManager->hydrateReview(
                $reviewData = $form->getData(),
                $user = $loggedUser,
                $elementId = $eltId
            );
            return $this->redirectToRoute('pc_exchange_view', array('id' => $eltId ));
        }

        $criterionRepo = $this->getDoctrine()->getRepository(Criterion::class);

        return $this->render('PCExchangeBundle:Review:form.html.twig', array(
            'form' => $form->createView(),
            'criteria' => $criterionRepo->findAll(),
        ));

    }


    public function indexAction($eltId)
    {
        $reviewRepo = $this->getDoctrine()->getRepository(Review::class);

        $reviewList = $reviewRepo->findBy(
            array('element' => $eltId)
        );

        $ratingLogic = $this->container->get('pc_exchange.ratinglogic');

        return $this->render('PCExchangeBundle:Review:index.html.twig', array(
            'reviewList' => $reviewList,
            'score' => $ratingLogic->getElementAvgScore($reviewList),
            /*'cons' => $reviewRepo->myGetProsAndCons(0, $eltId),*/
            'pros' => $reviewRepo->myGetProsAndCons(1, $eltId)
        ));
    }


    public function deleteAction($reviewId)
    {
        $em = $this->getDoctrine()->getManager();

        $reviewToDelete = $em->getRepository(Review::class)->find($reviewId);

        $em->remove($reviewToDelete);
        $em->flush();

        return $this->redirectToRoute('pc_exchange_view', array('id' => $reviewToDelete->getElement()->getId()));

    }


    public function editAction(Request $request, $reviewId)
    {
        $reviewToEdit = $this->getDoctrine()->getRepository(Review::class)->find($reviewId);

        $criterionRepo = $this->getDoctrine()->getRepository(Criterion::class);

        $form = $this->createForm(ReviewType::class, $reviewToEdit);
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()) {
            $reviewManager = $this->container->get('pc_exchange.reviewmanager');

            $reviewManager->myEditReview(
                $reviewData = $form->getData(),
                $existingReview = $reviewToEdit
            );
        }

        return $this->render('PCExchangeBundle:Review:form.html.twig', array(
            'form' => $form->createView(),
            'criteria' => $criterionRepo->findAll()
        ));

    }

}
