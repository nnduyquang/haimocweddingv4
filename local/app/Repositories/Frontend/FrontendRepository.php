<?php

namespace App\Repositories\Frontend;

use App\Product;

class FrontendRepository implements FrontendRepositoryInterface
{
    public function getFrontend()
    {
        $data = [];
        $albums = Product::where('isActive', ACTIVE)->orderBy('id', 'DESC')->take(6)->get();
        $data['albums'] = $albums;
        return $data;
    }

    public function getAlbumDetail($path)
    {
        $data = [];
        $album = Product::where('path', $path)->first();
        $data['album'] = $album;
        return $data;
    }


    public function getFrontEndInfo()
    {
        $data = [];
        return $data;
    }


}