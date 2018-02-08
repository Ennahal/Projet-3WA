<?php
namespace Src\Controller;
use Silex\Application;
use Src\Model\CarteModel;

class CarteController{

  public function show( Application $app){

    $postStarter = new CarteModel();
    $postCoucous = new CarteModel();
    $postDish = new CarteModel();
    $postTajineAgneau = new CarteModel();
    $postTajinesPoulet = new CarteModel();
    $postDessert = new CarteModel();
    $postAperitif = new CarteModel();
    $postFreshDrink = new CarteModel();
    $postHotDrink = new CarteModel();
    $postwine = new CarteModel();
    $postdigestive = new CarteModel();

    $starters= $postStarter->ListAllStarter();
    $couscouss= $postCoucous->ListAllCouscous();
    $dishs= $postDish->ListAllDish();
    $TajineAgneaus= $postTajineAgneau->ListAllTajineAgneau();
    $TajinesPoulets= $postTajinesPoulet->ListAllTajineAgneau();
    $desserts= $postDessert->ListAllDessert();
    $aperitifs= $postAperitif->ListAllAperitif();
    $FreshDrinks= $postFreshDrink->ListAllFreshDrink();
    $HotDrinks= $postHotDrink->ListAllHotDrink();
    $wines= $postwine->ListAllWines();
    $digestives= $postdigestive->ListAllDigestive();

    $array = [ 'starters' => $starters,
    'couscouss' => $couscouss,
    'dishs' => $dishs,
    'TajineAgneaus' => $TajineAgneaus,
    'TajinesPoulets' => $TajinesPoulets,
    'desserts' => $desserts,
    'aperitifs' => $aperitifs,
    'FreshDrinks' => $FreshDrinks,
    'HotDrinks' => $HotDrinks,
    'wines' => $wines,
    'digestives' => $digestives];

    return $app['twig']->render('carte.twig',  $array);
  }


}
