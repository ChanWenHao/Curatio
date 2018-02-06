<?php

namespace PC\UserBundle\Repository;
use Symfony\Bridge\Doctrine\Security\User\UserLoaderInterface;

/**
 * UserRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class UserRepository extends \Doctrine\ORM\EntityRepository implements UserLoaderInterface
{
    public function loadUserByUsername($username) {
        $qb = $this->createQueryBuilder('u')
            ->where('u.username = :usernameValue OR u.email = :emailValue')
            ->setParameter('usernameValue', $username)
            ->setParameter('emailValue', $username);

        return $qb->getQuery()->getOneOrNullResult();
    }
}
