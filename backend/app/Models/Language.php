<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Language extends Model
{
    use HasFactory;

    public $table = "languages";

    public $timestamps = true; //by default timestamp false

    protected $fillable = [
        'name','cover','content','is_default','status','extra_fields'
    ];

    protected $hidden = [
        'updated_at', 'created_at',
    ];
}
