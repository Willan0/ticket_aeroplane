import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class AppLayout{
  static getSize(BuildContext context){
    return MediaQuery.of( context).size;
  }
  static getScreenWidth()=>Get.width;

  static getScreenHeight()=> Get.height;
  static getWidth(double pixels){
    double x = getScreenWidth()/pixels;
    return getScreenWidth()/x;
  }
  static getHeight(double pixels){
    double x = getScreenHeight()/pixels;
    return getScreenHeight()/x;
  }

}