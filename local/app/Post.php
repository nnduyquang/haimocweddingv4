<?phpnamespace App;use Illuminate\Database\Eloquent\Model;class Post extends Model{    protected $fillable = [        'title', 'path', 'description', 'content', 'image', 'isActive', 'post_type', 'user_id', 'seo_id', 'category_item_id'    ];    public function users()    {        return $this->belongsTo('App\User', 'user_id');    }    public function categoryitem(){        return $this->belongsTo('App\CategoryItem','category_item_id');    }    public function seos(){        return $this->belongsTo('App\Seo','seo_id');    }    public function products(){        return $this->belongsToMany('App\Product', 'post_product', 'post_id', 'product_id')->withTimestamps();    }    public function setImageAttribute($value)    {        if ($value) {            $this->attributes['image'] = substr($value, strpos($value, 'images'), strlen($value) - 1);        } else            $this->attributes['image'] = null;    }    public function setIsActiveAttribute($value)    {        if (!IsNullOrEmptyString($value)) {            $this->attributes['isActive'] = 1;        } else {            $this->attributes['isActive'] = 0;        }    }    public function setDescriptionAttribute($value)    {        if (!IsNullOrEmptyString($value)) {            $this->attributes['description'] = $value;        } else {            $this->attributes['description'] = null;        }    }    public function setPathAttribute($value)    {        if (IsNullOrEmptyString($value))            $this->attributes['path'] = chuyen_chuoi_thanh_path($this->title);    }    protected static function boot() {        parent::boot();        static::deleting(function($post) { // before delete() method call this            $post->seos->delete();            $post->products()->detach();        });    }}