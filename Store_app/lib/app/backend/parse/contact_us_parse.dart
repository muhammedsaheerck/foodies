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

class ContactUsParse {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  ContactUsParse(
      {required this.sharedPreferencesManager, required this.apiService});

  Future<Response> saveContact(dynamic param) async {
    return await apiService.postPublic(AppConstants.saveaContacts, param);
  }

  Future<Response> sendToMail(dynamic param) async {
    return await apiService.postPublic(AppConstants.sendMailToAdmin, param);
  }

  String getSupportEmail() {
    return sharedPreferencesManager.getString('supportEmail') ?? '';
  }
}
