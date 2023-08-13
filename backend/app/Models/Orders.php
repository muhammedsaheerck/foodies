<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Orders extends Model
{
    use HasFactory;

    protected $table = 'orders';

    public $timestamps = true; //by default timestamp false

    protected $fillable = ['uid','store_id','address','items','coupon_id','coupon','order_to','wallet_used','wallet_price',
    'driver_id','delivery_charge','discount','total','serviceTax','grand_total','pay_method','paid','notes','status','extra_field'];

    // protected $hidden = [
    //     'updated_at', 'created_at',
    // ];
}
