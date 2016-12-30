<?php
// web/index.php
require_once __DIR__.'/../vendor/autoload.php';

$app = new Silex\Application();

// ... definitions

$app->get('/', function(){
  return 'hello world!';
});

$app['debug'] = true;
$app->run();
?>
