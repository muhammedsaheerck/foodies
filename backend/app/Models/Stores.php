<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Stores extends Model
{
    use HasFactory;

    protected $table = 'stores';

    public $timestamps = true; //by default timestamp false

    protected $fillable = ['uid','city_id','name','cover','mobile','address','landmark','pincode',
    'lat','lng','master_categories','delivery_type','pure_veg','have_dining','min_order_price','extra_charges',
    'short_descriptions','images','verified','status','open_time','close_time','is_closed','certificate','ratings','total_ratings',
    'cuisines','delivery_time','cost_for_two','extra_field'];

    protected $hidden = [
        'updated_at', 'created_at','fcm_token'
    ];
}
