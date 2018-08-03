<?php

namespace App\Repositories\Frontend;

use App\Post;
use App\Product;

class FrontendRepository implements FrontendRepositoryInterface
{
    public function getFrontend()
    {
        $data = [];
        $albums = Product::where('isActive', ACTIVE)->orderBy('id', 'DESC')->take(6)->get();
        $news=Post::where('category_item_id',2)->orderBy('id','DESC')->take(4)->get();
        $data['albums'] = $albums;
        $data['news'] = $news;
        return $data;
    }

    public function getAlbumDetail($path)
    {
        $data = [];
        $album = Product::where('path', $path)->first();
        $data['album'] = $album;
        return $data;
    }

    public function getPostDetail($path)
    {
        $data = [];
        $post=Post::where('path',$path)->first();
        $other=Post::where('id','<>',$post->id)->orderBy('id','DESC')->take(4)->get();
        $data['post'] = $post;
        $data['other'] = $other;
        return $data;
    }


    public function getFrontEndInfo()
    {
        $data = [];
        return $data;
    }


}