<?php
namespace Src\Controller;

use Symfony\Component\HttpFoundation\Request;
use Silex\Application;
use Src\Model\ContactModel;

class ContactController{

  public function show( Application $app){

    return $app['twig']->render('contact.twig');
  }


  public function add(Application $app, Request $request) {

    $name = $request->get('name');
    $mail = $request->get('mail');
    $content = $request->get('content');

    $contactModel = new ContactModel();
    $contactModel->add($name, $mail, $content);

    $baseUrl = $app["request"]->getBaseUrl();
    return $app->redirect($baseUrl . '/contact');
  }

}
