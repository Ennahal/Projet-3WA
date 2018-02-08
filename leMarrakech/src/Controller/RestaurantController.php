<?php
namespace Src\Controller;
use Silex\Application;

class RestaurantController{

  public function show( Application $app){

    return $app['twig']->render('restaurant.twig');
  }

}
