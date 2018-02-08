<?php
namespace Src\Controller;
use Symfony\Component\HttpFoundation\Request;
use Silex\Application;
use Src\Model\ReservationModel;

class ReservationController{

  public function show( Application $app){

    return $app['twig']->render('reservation.twig');
  }


  public function add(Application $app, Request $request) {

    $BookingDate =  $request->get('date');
    $NumberOfSeats =  $request->get('NB');
    $BookingHour = $request->get('hour');
    $FirstName = $request->get('firstname');
    $LastName = $request->get('lastname');
    $email = $request->get('mail');
    $phone = $request->get('phone');
    $message = $request->get('Message');

    $reservationModel = new ReservationModel();
    $reservationModel->add($BookingDate, $NumberOfSeats, $BookingHour, $FirstName, $LastName, $email, $phone, $message);


    $baseUrl = $app["request"]->getBaseUrl();
    return $app->redirect($baseUrl . '/reservation');
  }

  public function showRes( Application $app){
    
    $postRes = new ReservationModel();

    $bookings= $postRes->ListAllRes();

    $array = [ 'bookings' => $bookings];

    return $app['twig']->render('showRes.twig', $array);
  }
}
