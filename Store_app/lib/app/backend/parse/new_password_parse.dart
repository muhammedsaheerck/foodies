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

class NewPasswordParse {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  NewPasswordParse(
      {required this.sharedPreferencesManager, required this.apiService});
}
