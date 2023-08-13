<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StoresCategories extends Model
{
    use HasFactory;

    protected $table = 'store_categories';

    public $timestamps = true; //by default timestamp false

    protected $fillable = ['store_id','name','cover','kind','status','extra_field'];

    protected $hidden = [
        'updated_at', 'created_at',
    ];
}
