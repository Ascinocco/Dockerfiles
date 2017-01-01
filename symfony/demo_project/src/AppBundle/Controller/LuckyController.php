<?php
  /*
   * src/AppBundle/Controller/LuckyController.php
   * My first controller
   * Generates a random number
   */

   namespace AppBundle\Controller;

   use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
   use Symfony\Component\HttpFoundation\Response;

   class LuckyController
   {

     /**
      *@Route("/lucky/number")
      */
      public function numberAction()
      {
        $number = mt_rand(0, 100);

        return new Response("<h1>$number</h1>");
      }
   }
?>
