<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Settings extends Model
{
    use HasFactory;

    protected $table = 'settings';

    public $timestamps = true; //by default timestamp false

    protected $fillable = ['currencySymbol','currencySide','currencyCode','appDirection','logo','sms_name','sms_creds','user_login',
    'user_verify_with','country_modal','default_country_code','app_color','show_booking','app_status','driver_assign','home_page_style',
    'store_page_stype','fcm_token','status','extra_field'];

    protected $hidden = [
        'updated_at', 'created_at','sms_creds','fcm_token','search_radius'
    ];
}
