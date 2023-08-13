<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterCategories extends Model
{
    use HasFactory;

    protected $table = 'master_categories';

    public $timestamps = true; //by default timestamp false

    protected $fillable = ['name','cover','kind','status','extra_field'];

    protected $hidden = [
        'updated_at', 'created_at',
    ];
}
