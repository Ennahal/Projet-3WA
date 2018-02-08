<?php
namespace Src\Controller;
use Silex\Application; 

class AdminController{

  public function show( Application $app){

  	return $app['twig']->render('admin.twig');
  }

}
