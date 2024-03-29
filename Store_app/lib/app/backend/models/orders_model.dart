/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Foodies Full App Flutter
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2022-present initappz.
*/
import 'dart:convert';

import 'package:foodies_vendors/app/backend/models/product_model.dart';

class OrdersModel {
  int? id;
  int? uid;
  int? storeId;
  int? orderTo;
  String? address;
  List<Products>? items;
  int? couponId;
  String? coupon;
  int? driverId;
  double? deliveryCharge;
  double? discount;
  double? total;
  double? serviceTax;
  double? grandTotal;
  int? payMethod;
  String? paid;
  String? notes;
  int? status;
  String? extraField;
  String? createdAt;
  String? updatedAt;
  String? firstName;
  String? userCover;
  String? lastName;

  OrdersModel(
      {this.id,
      this.uid,
      this.storeId,
      this.orderTo,
      this.address,
      this.items,
      this.couponId,
      this.coupon,
      this.driverId,
      this.deliveryCharge,
      this.discount,
      this.total,
      this.serviceTax,
      this.grandTotal,
      this.payMethod,
      this.paid,
      this.notes,
      this.status,
      this.extraField,
      this.createdAt,
      this.updatedAt,
      this.firstName,
      this.userCover,
      this.lastName});

  OrdersModel.fromJson(Map<String, dynamic> json) {
    id = int.parse(json['id'].toString());
    uid = int.parse(json['uid'].toString());
    storeId = int.parse(json['store_id'].toString());
    orderTo = int.parse(json['order_to'].toString());
    address = json['address'];
    // items = json['items'];
    if (json['items'] != null) {
      items = <Products>[];
      List<dynamic> list = jsonDecode(json['items']);
      for (var element in list) {
        items!.add(Products.fromJson(element));
      }
    } else {
      items = [];
    }
    couponId = int.parse(json['coupon_id'].toString());
    coupon = json['coupon'];
    driverId = int.parse(json['driver_id'].toString());
    deliveryCharge = double.parse(json['delivery_charge'].toString());
    discount = double.parse(json['discount'].toString());
    total = double.parse(json['total'].toString());
    serviceTax = double.parse(json['serviceTax'].toString());
    grandTotal = double.parse(json['grand_total'].toString());
    payMethod = int.parse(json['pay_method'].toString());
    paid = json['paid'];
    notes = json['notes'];
    status = int.parse(json['status'].toString());
    extraField = json['extra_field'];
    // createdAt = Jiffy(json['created_at']).yMMMdjm;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    firstName = json['first_name'];
    userCover = json['user_cover'];
    lastName = json['last_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['uid'] = uid;
    data['store_id'] = storeId;
    data['order_to'] = orderTo;
    data['address'] = address;
    data['items'] = items;
    data['coupon_id'] = couponId;
    data['coupon'] = coupon;
    data['driver_id'] = driverId;
    data['delivery_charge'] = deliveryCharge;
    data['discount'] = discount;
    data['total'] = total;
    data['serviceTax'] = serviceTax;
    data['grand_total'] = grandTotal;
    data['pay_method'] = payMethod;
    data['paid'] = paid;
    data['notes'] = notes;
    data['status'] = status;
    data['extra_field'] = extraField;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['first_name'] = firstName;
    data['user_cover'] = userCover;
    data['last_name'] = lastName;
    return data;
  }
}
