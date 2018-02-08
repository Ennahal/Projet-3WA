<?php
namespace Src\Controller; //evite les collisions pour Postcontroller

use Symfony\Component\HttpFoundation\Request;
use Silex\Application; // permet d'utiliser Application
use Src\Model\ReservationModel;

class AdminReservationController{


  public function showRes( Application $app){

    $postRes = new ReservationModel();

    $bookings= $postRes->ListAllRes();

    $array = [ 'bookings' => $bookings];

  	return $app['twig']->render('showRes.twig', $array);
  }
}
