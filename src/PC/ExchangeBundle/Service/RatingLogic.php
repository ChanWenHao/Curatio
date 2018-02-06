<?php

namespace PC\ExchangeBundle\Service;
use PC\ExchangeBundle\Entity\Review;

class RatingLogic
{

    public function getElementAvgScore($reviewList)
    {
        $sum = 0;

        foreach($reviewList as $item) {
            $sum = $sum + $item->getScore();
        }

        if(count($reviewList) != 0) {
            return  $sum/count($reviewList);
        }
        else {
            return $sum;
        }
    }

    public function getProsAndCons($reviewRC)
    {
        
    }

}
