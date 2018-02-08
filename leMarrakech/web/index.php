<?php

require_once __DIR__.'/../vendor/autoload.php';


use Src\Classes\Database;

$app = new Silex\Application();
$app['debug'] = true;

$twig = new Silex\Provider\TwigServiceProvider();
$app->register($twig, [ 'twig.path' => 'View' ]);



$app->get('/', 'Src\Controller\AccueilController::show');

$app->get('/carte', 'Src\Controller\CarteController::show');

$app->get('/contact', 'Src\Controller\ContactController::show');
$app->post('/contact', 'Src\Controller\ContactController::add');

$app->get('/livraison', 'Src\Controller\LivraisonController::show');

$app->get('/reservation', 'Src\Controller\ReservationController::show');
$app->post('/reservation', 'Src\Controller\ReservationController::add');

$app->get('/restaurant', 'Src\Controller\RestaurantController::show');

$app->get('/admin', 'Src\Controller\AdminController::show');

$app->get('/showRes', 'Src\Controller\AdminReservationController::showRes');

$app->get('/showMes', 'Src\Controller\AdminMesssageController::showMes');

$app->run();
