<?php
namespace Src\Controller;
use Silex\Application;

class LivraisonController{

  public function show( Application $app){

    return $app['twig']->render('livraison.twig');
  }

}
