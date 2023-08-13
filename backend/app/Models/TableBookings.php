<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TableBookings extends Model
{
    use HasFactory;

    protected $table = 'table_booking';

    public $timestamps = true; //by default timestamp false

    protected $fillable = ['uid','store_id','total_guest','guest_name','mobile','email','notes','saved_date','slot','status','extra_field'];

    protected $hidden = [
        'updated_at', 'created_at',
    ];
}
