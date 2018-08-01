<?php

namespace App\Http\Controllers;

use App\Location;
use Illuminate\Http\Request;

class LocationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $locations = Location::orderBy('order', 'ASC')->paginate(5);
        return view('backend.admin.location.index', compact('locations'))
            ->with('i', ($request->input('page', 1) - 1) * 5);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.admin.location.create', compact('roles'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $location = new Location();
        $name = $request->input('name');
        $image = $request->input('image');
        $seoTitle = $request->input('seo_title');
        $seoDescription = $request->input('seo_description');
        $seoKeywords=$request->input('seo_keywords');
        if ($image) {
            $image = substr($image, strpos($image, 'images'), strlen($image) - 1);
            $location->image = $image;
        }
        $location->name = $name;
        $location->seos->seo_title = $seoTitle;
        $location->seos->seo_description = $seoDescription;
        $location->seos->seo_keywords = $seoKeywords;
        $location->seos->save();
        $location->save();
        return redirect()->route('location.index')
            ->with('success', 'Tạo Mới Thành Công Địa Điểm');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $location = Location::find($id);
        return view('backend.admin.location.edit', compact('location'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $location = Location::find($id);
        $name = $request->input('name');
        $image = $request->input('image');
        $seoTitle = $request->input('seo_title');
        $seoDescription = $request->input('seo_description');
        $seoKeywords=$request->input('seo_keywords');
        $seo->seo_title= $seoTitle;
        $seo->seo_description= $seoDescription;
        $seo->seo_keywords= $seoKeywords;
        $seo->save();
        if ($image) {
            $image = substr($image, strpos($image, 'images'), strlen($image) - 1);
            $location->image = $image;
        }
        $location->name = $name;
        $location->save();
        return redirect()->route('location.index')
            ->with('success', 'Cập Nhật Thành Công Địa Điểm');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $location = Location::find($id);
        $location->delete();
        return redirect()->route('location.index')
            ->with('success', 'Đã Xóa Địa Điểm Thành Công');
    }
}
