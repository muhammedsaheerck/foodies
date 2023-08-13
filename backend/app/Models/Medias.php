<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Medias extends Model
{
    use HasFactory;

    protected $table = 'medias';

    protected $fillable = ['name','status','extra_fields'];

    protected $hidden = [
        'updated_at'
    ];
}
