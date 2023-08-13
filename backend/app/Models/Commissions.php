<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Commissions extends Model
{
    use HasFactory;

    protected $table = 'store_commission';

    public $timestamps = true; //by default timestamp false

    protected $fillable = ['store_id','rate','status','extra_field'];

    protected $hidden = [
        'updated_at', 'created_at',
    ];
}
