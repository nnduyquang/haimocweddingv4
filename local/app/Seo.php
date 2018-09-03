<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Seo extends Model
{
    protected $fillable = [
        'seo_title','seo_description','seo_keywords'
    ];
    protected $dates = ['created_at', 'deleted_at'];
}
