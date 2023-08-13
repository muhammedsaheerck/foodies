<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class General extends Model
{
    use HasFactory;

    protected $table = 'general';

    public $timestamps = true; //by default timestamp false

    protected $fillable = ['store_name','mobile','email','address','searchResultKind','city','state','country','zip','free_delivery','tax','shipping','shippingPrice','allowDistance','facebook_url','instagram','twitter','google_playstore','apple_appstore','web_footer','status','extra_field'];

    protected $hidden = [
        'updated_at', 'created_at',
    ];
}
