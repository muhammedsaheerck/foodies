/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Foodies Full App Flutter
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2022-present initappz.
*/

import 'dart:developer';

import 'package:foodies_user/app/backend/api/api.dart';
import 'package:foodies_user/app/helper/shared_pref.dart';
import 'package:foodies_user/app/util/constant.dart';
import 'package:get/get.dart';

class HomeParse {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  HomeParse({required this.sharedPreferencesManager, required this.apiService});

  double getLat() {
    return sharedPreferencesManager.getDouble('lat') ?? 0.0;
  }

  double getLng() {
    return sharedPreferencesManager.getDouble('lng') ?? 0.0;
  }

  Future<Response> getHomeData(var body) async {
    var response = await apiService.postPublic(AppConstants.getHomeData, body);
    log("home data parde :" + response.toString());
    return response;
  }

  String getCurrencyCode() {
    return sharedPreferencesManager.getString('currencyCode') ??
        AppConstants.defaultCurrencyCode;
  }

  String getCurrencySide() {
    return sharedPreferencesManager.getString('currencySide') ??
        AppConstants.defaultCurrencySide;
  }

  String getCurrencySymbol() {
    return sharedPreferencesManager.getString('currencySymbol') ??
        AppConstants.defaultCurrencySymbol;
  }

  String getAddressName() {
    return sharedPreferencesManager.getString('address') ?? '';
  }

  ///The same data found in the GetHome endpoint, but the endpoint category data shows only one data, so the GetSpecific Cuisine category The List endpoint added
  Future<Response> getCuisinesData() async {
    var response = await apiService.getPublic(AppConstants.getCuisinesData);
    return response;
  }
}
