/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Foodies Full App Flutter
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2022-present initappz.
*/
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:foodies_user/app/backend/api/handler.dart';
import 'package:foodies_user/app/backend/models/product_models.dart';
import 'package:foodies_user/app/backend/models/variations_model.dart';
import 'package:foodies_user/app/backend/parse/customiz_parse.dart';
import 'package:foodies_user/app/controller/my_cart_controller.dart';
import 'package:foodies_user/app/controller/restaurant_detail_controller.dart';
import 'package:foodies_user/app/controller/tab_controller.dart';
import 'package:foodies_user/app/helper/uid_generate.dart';
import 'package:foodies_user/app/util/constant.dart';
import 'package:foodies_user/app/util/toast.dart';
import 'package:get/get.dart';

class CustomizController extends GetxController implements GetxService {
  final CustomizeParse parser;
  bool apiCalled = false;
  Products _productDetais = Products();
  Products get productDetails => _productDetais;

  List<VariationsModel> _savedVariationsList = <VariationsModel>[];
  List<VariationsModel> get savedVariationsList => _savedVariationsList;

  bool sameProduct = false;

  List<Products> _sameCart = <Products>[];
  List<Products> get sameCart => _sameCart;

  String currencySide = AppConstants.defaultCurrencySide;
  String currencySymbol = AppConstants.defaultCurrencySymbol;

  CustomizController({required this.parser});

  @override
  void onInit() {
    debugPrint('call api');
    super.onInit();
    currencySide = parser.getCurrencySide();
    currencySymbol = parser.getCurrencySymbol();
  }

  Future<void> getFoodDetails(String id) async {
    var param = {"id": id};
    Response response = await parser.getFoodDetails(param);
    // log("get one food detail :" + response.body);
    _productDetais = Products();
    _savedVariationsList = [];
    _sameCart = [];
    apiCalled = true;
    update();
    debugPrint(response.bodyString);
    if (response.statusCode == 200) {
      Map<String, dynamic> myMap = Map<String, dynamic>.from(response.body);
      var data = myMap['data'];
      // log("myMap" + myMap.toString());
      Products datas = Products.fromJson(data);
      if (Get.find<MyCartController>().checkProductInCart(datas.id ?? 0)) {
        log("same product: true");
        sameProduct = true;
        debugPrint(jsonEncode(_sameCart));
        log(jsonEncode(_sameCart).toString());
        _sameCart =
            Get.find<MyCartController>().getSavedVariations(datas.id ?? 1);
        log(" cart $_sameCart");
        log(_sameCart.toString());
        // log(_sameCart[0].variations.length.toString());
      } else {
        log("same product: false");
        sameProduct = false;
        _sameCart = [];
      }
      _productDetais = datas;
      debugPrint(jsonEncode(_productDetais));
      update();
    } else {
      ApiChecker.checkApi(response);
    }
    update();
  }

  void saveRadioListName(int index, int subIndex) {
    for (var element in _productDetais.variations![index].items!) {
      element.isChecked = false;
    }
    _productDetais.variations![index].items![subIndex].isChecked = true;
    update();
  }

  void saveCheckBoxListItem(int index, int subIndex) {
    _productDetais.variations![index].items![subIndex].isChecked =
        _productDetais.variations![index].items![subIndex].isChecked == true
            ? false
            : true;
    update();
  }

  void onSaveItem() {
    debugPrint(jsonEncode(productDetails.variations));
    if (_productDetais.variations != null) {
      var haveSize = _productDetais.variations!
          .firstWhereOrNull((element) => element.isSize == true);
      debugPrint(jsonEncode(haveSize));
      if (haveSize != null && haveSize.isSize == true) {
        debugPrint('have size in varaitions');
        if (haveSize.items != null) {
          var items = haveSize.items!
              .firstWhereOrNull((element) => element.isChecked == true);
          if (items == null) {
            showToast('Please select size');
            return;
          }
        }
      }

      onNewSave();
    } else {
      onNewSave();
    }
  }

  void onNewSave() {
    if (_productDetais.variations != null) {
      for (var element in _productDetais.variations!) {
        if (element.items != null) {
          for (var variation in element.items!) {
            if (variation.isChecked == true) {
              var param = {
                "title": variation.title.toString(),
                "price": variation.price,
                "type": element.type,
                "quantity": 1,
                "uuid": Uuid().generateV4()
              };
              VariationsModel saveInCart = VariationsModel.fromJson(param);
              _savedVariationsList.add(saveInCart);
            }
          }
        }
      }
    }

    _productDetais.savedVariationsList = _savedVariationsList;
    saveInCart();
    onBack();
  }

  void saveInCart() {
    _productDetais.quantity = 1;
    Get.find<MyCartController>().addItem(_productDetais);
    Get.find<TabsController>().updateCartValue();
  }

  void onBack() {
    Get.find<RestaurantDetailController>().checkCartData();
    var context = Get.context as BuildContext;
    Navigator.of(context).pop(true);
  }

  void updateSameProductQuantity(index) {
    _sameCart[index].quantity = _sameCart[index].quantity + 1;
    update();
  }

  void removeProductVariationsQuantity(int index) {
    debugPrint(index.toString());
    if (_sameCart[index].quantity > 1) {
      _sameCart[index].quantity = _sameCart[index].quantity - 1;
    } else if (_sameCart[index].quantity == 1) {
      _sameCart[index].quantity = 0;

      update();
    }
    for (var element in _sameCart) {
      Get.find<MyCartController>().updateSameProductQuantity(element);
    }
    if (_sameCart[index].quantity == 0) {
      _sameCart.removeAt(index);
      Get.find<MyCartController>().clearCartFromQauntity();
    }
    if (_sameCart.isEmpty) {
      onBack();
    }
    update();
  }

  void updateSameProduct() {
    for (var element in _sameCart) {
      Get.find<MyCartController>().updateSameProductQuantity(element);
    }
    update();
    onBack();
  }

  void onAddingNew() {
    sameProduct = false;
    update();
  }
}
