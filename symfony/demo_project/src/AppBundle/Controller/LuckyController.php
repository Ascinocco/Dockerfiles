<?php
  /*
   * src/AppBundle/Controller/LuckyController.php
   * My first controller
   * Generates a random number
   */
   namespace AppBundle\Controller;

   use Symfony\Bundle\FrameworkBundle\Controller\Controller;
   use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
   use Symfony\Component\HttpFoundation\Response;

   class LuckyController extends Controller
   {

     /**
      * @Route("/lucky/number")
      */
      public function numberAction()
      {
        $number = mt_rand(0, 100);

        return new Response("<html><body><h1>$number</h1></body></html>");
      }

      /**
       * @Route("/lucky/number/twig")
       */
       public function twigNumberAction()
       {
         $number = mt_rand(0, 100);

         return $this->render('lucky/number.html.twig', array(
           'number' => $number,
         ));
       }
   }
?>
