<?php

namespace App\Repositories\Backend\Post;

interface PostRepositoryInterface
{
    public function getAllPostOrderById();

    public function getPostById($id);

    public function showCreatePost();

    public function showEditPost();

    public function createNewPostWithSeoId($request);

    public function updateNewPost($request, $id);

    public function deletePost($id);
}


