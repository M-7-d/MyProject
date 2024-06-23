import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsController extends GetxController {
  static ItemsController get instance => Get.find();

  String? name;
  String? purchaseDate;
  String? expirationDate;
  String? quantity;
  String? unit;
  String? marketName;
  String? notes;
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
}
