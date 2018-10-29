<?php

namespace App\Repositories\Frontend;

use App\CategoryItem;
use App\Location;
use App\Post;
use App\Product;

class FrontendRepository implements FrontendRepositoryInterface
{
    public function getFrontend()
    {
        $data = [];
        $albums = Product::where('isActive', ACTIVE)->where('is_hot',ACTIVE)->orderBy('order', 'ASC')->take(6)->get();
        $news = Post::where('category_item_id', 2)->orderBy('id', 'DESC')->take(4)->get();
        $promotion=Post::where('category_item_id', 3)->first();
        $listPrice=Post::where('category_item_id', 4)->take(4)->get();
        foreach ($listPrice as $key=>$item)
        {
            $item->description = cat_chuoi_dai_thanh_ngan(loai_bo_html_tag($item->description), 200);
        }
        foreach ($news as $key => $item) {
            $item->description = cat_chuoi_dai_thanh_ngan(loai_bo_html_tag($item->description), 200);
            $item->title = cat_chuoi_dai_thanh_ngan($item->title, 50);
        }
        $data['albums'] = $albums;
        $data['news'] = $news;
        $data['promotion']=$promotion;
        $data['listPrice']=$listPrice;
        return $data;
    }

    public function getAlbumDetail($path)
    {
        $data = [];
        $album = Product::where('path', $path)->first();
        $order=Product::where('id','<>',$album->id)->where('isActive', ACTIVE)->where('category_product_id',1)->orderBy('id','DESC')->take(8)->get();
        $listPrice=Post::where('category_item_id', 4)->get();
        foreach ($listPrice as $key=>$item)
        {
            $item->description = cat_chuoi_dai_thanh_ngan(loai_bo_html_tag($item->description), 200);
        }
        $data['order'] = $order;
        $data['album'] = $album;
        $data['listPrice']=$listPrice;
        return $data;
    }

    public function getPhongSuDetail($path)
    {
        $data = [];
        $album = Product::where('path', $path)->first();
        $order=Product::where('id','<>',$album->id)->where('isActive', ACTIVE)->where('category_product_id',5)->orderBy('id','DESC')->take(8)->get();
        $listPrice=Post::where('category_item_id', 4)->get();
        foreach ($listPrice as $key=>$item)
        {
            $item->description = cat_chuoi_dai_thanh_ngan(loai_bo_html_tag($item->description), 200);
        }
        $data['order'] = $order;
        $data['album'] = $album;
        $data['listPrice']=$listPrice;
        return $data;
    }


    public function getPostDetail($path, $type)
    {
        $data = [];
        if ($type == 'tin-tuc') {
            $post = Post::where('path', $path)->first();
            $other = Post::where('id', '<>', $post->id)->orderBy('id', 'DESC')->take(4)->get();
            $data['post'] = $post;
            $data['other'] = $other;
            $data['type'] = 'tin-tuc';
        }else if ($type == 'khuyen-mai'){

            $categoryItem=CategoryItem::where('path',$type)->first();
            $post = Post::where('category_item_id', $categoryItem->id)->first();
            $album=Product::where('isActive', ACTIVE)->orderBy('id','DESC')->take(8)->get();
            $data['other'] = [];
            $data['post'] = $post;
            $data['album'] = $album;
            $data['type'] = 'khuyen-mai';
        }
        return $data;
    }

    public function getAllAlbum()
    {
        $data = [];
        $locations = Location::all();
        $albums = Product::where('isActive', ACTIVE)->where('category_product_id',1)->orderBy('id','DESC')->get();
        $data['locations'] = $locations;
        $data['albums'] = $albums;
        return $data;
    }

    public function getAllPhongSu()
    {
        $data = [];
        $albums = Product::where('isActive', ACTIVE)->where('category_product_id',5)->orderBy('id','DESC')->get();
        $data['albums'] = $albums;
        return $data;
    }


    public function getPriceDetail($path)
    {
        $data = [];
        $post=Post::where('path',$path)->first();
        $data['post'] = $post;
        return $data;
    }


    public function getFrontEndInfo()
    {
        $data = [];
        $news = Post::where('category_item_id', 2)->orderBy('id', 'DESC')->take(4)->get();
        $data['news'] = $news;
        return $data;
    }

    public function getAllFamily()
    {
        $data = [];
        $albums = Product::where('isActive', ACTIVE)->where('category_product_id',6)->orderBy('id','DESC')->get();
        $data['albums'] = $albums;
        return $data;
    }

    public function getFamilyDetail($path)
    {
        $data = [];
        $album = Product::where('path', $path)->first();
        $order=Product::where('id','<>',$album->id)->where('isActive', ACTIVE)->where('category_product_id',6)->orderBy('id','DESC')->take(8)->get();
        $listPrice=Post::where('category_item_id', 4)->get();
        foreach ($listPrice as $key=>$item)
        {
            $item->description = cat_chuoi_dai_thanh_ngan(loai_bo_html_tag($item->description), 200);
        }
        $data['order'] = $order;
        $data['album'] = $album;
        $data['listPrice']=$listPrice;
        return $data;
    }


}