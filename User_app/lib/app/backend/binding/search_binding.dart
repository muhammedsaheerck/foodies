/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Foodies Full App Flutter
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2022-present initappz.
*/
// import 'package:foodies_user/app/controller/search_controller.dart';
// import 'package:get/get.dart';

// class SearchBinding extends Bindings {
//   @override
//   void dependencies() async {
//     Get.lazyPut(
//       () => SearchControl(parser: Get.find()),
//     );
//   }
// }

import 'package:foodies_user/app/controller/search_controller.dart';
import 'package:get/get.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => SearchScreenController(parser: Get.find()),
    );
  }
}
