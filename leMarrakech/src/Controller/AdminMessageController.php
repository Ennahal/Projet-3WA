<?php
namespace Src\Controller; //evite les collisions pour Postcontroller

use Symfony\Component\HttpFoundation\Request;
use Silex\Application; // permet d'utiliser Application
use Src\Model\ContactModel;

class AdminMessageController{


  public function showMes( Application $app){

    $postMes = new ContactModel();

    $messages= $postMes->ListAllMes();

    $array = [ 'messages' => $messages];

  	return $app['twig']->render('showMes.twig', $array);
  }
}
