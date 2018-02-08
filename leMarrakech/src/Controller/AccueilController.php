<?php
namespace Src\Controller;
use Silex\Application;

class AccueilController{

  public function show( Application $app){

  	return $app['twig']->render('index.twig');
  }

}
