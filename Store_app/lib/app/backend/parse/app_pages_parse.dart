/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Foodies Full App Flutter
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2022-present initappz.
*/
import 'package:foodies_vendors/app/backend/api/api.dart';
import 'package:foodies_vendors/app/helper/shared_pref.dart';
import 'package:get/get.dart';
import 'package:foodies_vendors/app/util/constant.dart';

class AppPagesParse {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  AppPagesParse(
      {required this.sharedPreferencesManager, required this.apiService});

  Future<Response> getContentById(var id) async {
    return await apiService.postPublic(AppConstants.pageContent, {'id': id});
  }
}
