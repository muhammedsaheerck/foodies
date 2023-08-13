/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Foodies Full App Flutter
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2022-present initappz.
*/
import 'package:get/get.dart';
import 'package:foodies_vendors/app/backend/api/api.dart';
import 'package:foodies_vendors/app/helper/shared_pref.dart';
import 'package:foodies_vendors/app/util/constant.dart';

class AddCategoryParse {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  AddCategoryParse(
      {required this.sharedPreferencesManager, required this.apiService});

  Future<Response> getCategory(var body) async {
    var response = await apiService.postPrivate(AppConstants.category, body,
        sharedPreferencesManager.getString('token') ?? '');
    return response;
  }

  Future<Response> getStatus(var body) async {
    var response = await apiService.postPrivate(AppConstants.status, body,
        sharedPreferencesManager.getString('token') ?? '');
    return response;
  }

  Future<Response> getDelete(var body) async {
    var response = await apiService.postPrivate(AppConstants.delete, body,
        sharedPreferencesManager.getString('token') ?? '');
    return response;
  }

  Future<Response> getAdminCategory(var body) async {
    var response = await apiService.postPrivate(AppConstants.adminCategory,
        body, sharedPreferencesManager.getString('token') ?? '');
    return response;
  }

  String getStoreId() {
    return sharedPreferencesManager.getString('id') ?? '';
  }
}
