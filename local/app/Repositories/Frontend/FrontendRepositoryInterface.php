<?php

namespace App\Repositories\Frontend;

interface FrontendRepositoryInterface
{
    public function getFrontend();

    public function getAlbumDetail($path);

    public function getPostDetail($path);

    public function getFrontEndInfo();
}