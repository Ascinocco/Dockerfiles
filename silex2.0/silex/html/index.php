<?php
// web/index.php
require_once __DIR__.'/../vendor/autoload.php';

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;

$app = new Silex\Application();

$app->get('/', function(){
  return 'hello';
});

$app->get('fml', function(){
  return 'fml?';
});

// error handling
$app->error(function (\Exception $e, Request $req, $code) use ($app){
  switch ($code){
    case 404:
        $message = "The page you requested could not be found.";
        $error_details = array(
            "code"    => "$code",
            "message" => "$message",
            "error"   => "$e"
          );
        break;
    case 500:
        $message = "An error has occured on the server. Please try again.";
        $error_details = array(
            "code"    => "$code",
            "message" => "$message",
            "error"   => "$e"
          );
        break;
    default:
        $message = "Uh oh, something went wrong... Please try again.";
        $error_details = array(
            "code"    => "$code",
            "message" => "$message",
            "error"   => "$e"
          );
        break;
  }

  return new Response($error_details);
});

$app['debug'] = true;
$app->run();
?>
