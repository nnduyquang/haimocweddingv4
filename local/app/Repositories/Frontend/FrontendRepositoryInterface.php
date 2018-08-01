<?php

namespace App\Repositories\Frontend;

interface FrontendRepositoryInterface
{
    public function getFrontend();

    public function getAlbumDetail($path);


    public function getFrontEndInfo();
}