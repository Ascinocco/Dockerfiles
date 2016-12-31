<?php
// web/index.php
require_once __DIR__.'/../vendor/autoload.php';

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;

$app = new Silex\Application();

$app->register(new Silex\Provider\TwigServiceProvider(), array(
  'twig.path' => __DIR__.'/assets/pages',
));

$app->get('/', function(){
  return 'hello';
});

$app->get('fml', function(){
  return 'fml?';
});

// error handling
$app->error(function (\Exception $e, Request $req, $code) use ($app){
  switch ($code) {
    case 404:
        return $app['twig']->render('errors/404.twig');

    case 500:
        return $app['twig']->render('errors/500.twig');

    default:
        return $app['twig']->render('errors/default-error.twig');
  }
});

$app['debug'] = true;
$app->run();
?>
