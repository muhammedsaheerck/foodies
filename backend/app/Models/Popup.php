<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Popup extends Model
{
    use HasFactory;

    protected $table = 'popup';

    public $timestamps = true; //by default timestamp false

    protected $fillable = ['messsage','when','status','extra_field'];

    protected $hidden = [
        'updated_at', 'created_at',
    ];
}
