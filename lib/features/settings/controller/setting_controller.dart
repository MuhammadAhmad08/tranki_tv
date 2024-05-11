import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingController extends GetxController {
  RxInt pageNo = 0.obs;
  PageController pageController2 = PageController();
 
  @override
  void onInit() async {
    print('Start');
  
  }
}
