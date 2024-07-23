


import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ConvertController extends GetxController{

  List <String>currencyList=[
    'USD',
    'EUR',
    'GBP',
    'JPY',
  ];


  List<String> currencyList2=[
    'USD',
    'EUR',
    'GBP',
    'JPY',
  ];

  String selectCurrency='USD';
  String selectCurrency2='EUR';

   TextEditingController priceController=TextEditingController();

  changeCurrency(String value){
    selectCurrency=value;
    update();
  }
  changeCurrency2(String value){
    selectCurrency2=value;
    update();
  }


}