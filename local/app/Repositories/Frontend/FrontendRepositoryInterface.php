<?php

namespace App\Repositories\Frontend;

interface FrontendRepositoryInterface
{
    public function getFrontend();

    public function getAlbumDetail($path);

    public function getPostDetail($path, $type);

    public function getFrontEndInfo();

    public function getAllAlbum();

    public function getAllPhongSu();

    public function getPhongSuDetail($path);

    public function getPriceDetail($path);
}