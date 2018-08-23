<?php

namespace App\Http\Controllers;

use App\Repositories\Frontend\FrontendRepositoryInterface;
use Illuminate\Http\Request;

class FrontendController extends Controller
{
    protected $frontendRepository;

    public function __construct(FrontendRepositoryInterface $frontendRepository)
    {
        $this->frontendRepository = $frontendRepository;
    }

    public function getFrontend()
    {
        $data = $this->frontendRepository->getFrontend();
        return view('frontend.home.index', compact('data'));
    }

    public function getAlbumDetail($path)
    {
        $data = $this->frontendRepository->getAlbumDetail($path);
        return view('frontend.album.index', compact('data'));
    }

    public function getPostDetail($path,$type)
    {
        $data = $this->frontendRepository->getPostDetail($path,$type);
        return view('frontend.post.index', compact('data'));
    }

    public function getAllAlbum(){
        $data = $this->frontendRepository->getAllAlbum();
        return view('frontend.collection.index', compact('data'));
    }
    public function getPriceDetail($path){
        $data = $this->frontendRepository->getPriceDetail($path);
        return view('frontend.d_price.index', compact('data'));
    }


}

