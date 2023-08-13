<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    use HasFactory;

    protected $table = 'products';

    public $timestamps = true; //by default timestamp false

    protected $fillable = ['store_id','from_cate','recommended','outofstock','cate_id','cover','name','details','price','discount','rating','veg',
    'variations','size','status','extra_field'];

    protected $hidden = [
        'updated_at', 'created_at',
    ];
}
