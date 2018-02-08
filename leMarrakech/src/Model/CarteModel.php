<?php
namespace Src\Model;
use Src\Classes\Database;

class CarteModel{

  public function ListAllStarter(){
    $db = new Database();
    $starter = $db->query("SELECT *
                           FROM Starter ");

    return $starter;
  }

  public function ListAllCouscous(){
    $db = new Database();
    $couscous = $db->query("SELECT *
                            FROM Couscous ");

    return $couscous;
  }


  public function ListAllDish(){
    $db = new Database();
    $dish = $db->query("SELECT *
                        FROM Dish ");

    return $dish;
  }

  public function ListAllTajineAgneau(){
    $db = new Database();
    $TajineAgneau = $db->query("SELECT *
                                FROM TajineAgneau ");

    return $TajineAgneau;
  }

  public function ListAllTajinesPoulet(){
    $db = new Database();
    $TajinesPoulet = $db->query("SELECT *
                                 FROM TajinesPoulet ");

    return $TajinesPoulet;
  }


  public function ListAllDessert(){
    $db = new Database();
    $dessert = $db->query("SELECT *
                           FROM Dessert ");

    return $dessert;
  }


  public function ListAllAperitif(){
    $db = new Database();
    $aperitif = $db->query("SELECT *
                            FROM Aperitifs ");

    return $aperitif;
  }

  public function ListAllFreshDrink(){
    $db = new Database();
    $FreshDrink= $db->query("SELECT *
                             FROM FreshDrinks ");

    return $FreshDrink;
  }


  public function ListAllHotDrink(){
    $db = new Database();
    $HotDrink= $db->query("SELECT *
                           FROM HotDrinks ");

    return $HotDrink;
  }


  public function ListAllWines(){
    $db = new Database();
    $wine= $db->query("SELECT *
                       FROM Wines ");

    return $wine;
  }


  public function ListAllDigestive(){
    $db = new Database();
    $digestive= $db->query("SELECT *
                            FROM Digestive ");

    return $digestive;
  }

}
