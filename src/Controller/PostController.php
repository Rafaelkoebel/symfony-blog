<?php

namespace App\Controller;

use App\Entity\Post;
use App\Form\PostType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class PostController extends AbstractController
{
    #[Route('/', name: 'home')]
    public function home(): Response
    {
        return $this->render('post/home.html.twig', [
            'controller_name' => 'PostController',
        ]);
    }

    // #[Route('/post', name: 'post_view')]
    // public function post(): Response
    // {
    //     return $this->render('post/view.html.twig', [
    //         'controller_name' => 'PostController',
    //     ]);
    // }

    #[Route('/post/{id}', name: 'post_view')]
    public function postid($id): Response
    {
        return $this->render('post/view.html.twig', [
            'post' => [
                'title' => 'Le titre de l\'article',
                'content' => 'Mon super contenu',
            ]
        ]);
    }

    #[Route('/post/add', name: 'post_add')]
    public function addPost(Request $request): Response
    {
        $post = new Post();
        $form = $this->createForm(PostType::class, $post);

        return $this->render('post/add.html.twig', [
            'form' => $form->createView(),
        ]);
    }
}
