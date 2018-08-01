<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    protected $fillable = [
        'id', 'name', 'image', 'created_at', 'updated_at'
    ];

    public function products()
    {
        return $this->belongsToMany('App\Product', 'location_album', 'location_id', 'product_id')->withTimestamps();
    }

    public function seos(){
        return $this->belongsTo('App\Seo','seo_id');
    }
}
