
import 'package:flutter/material.dart';
import 'package:freelancerApp/core/resources/colors.dart';
import 'package:get_storage/get_storage.dart';

import 'app_assets.dart';


class CheckTheme {


  CheckTheme(){

    final box=GetStorage();
    bool isDarkMode = box.read('theme')??false ;

    print("is=========$isDarkMode");
    if(isDarkMode==true){
      kDrawerText=const Color(0xffFECF3B);
      backgroundImage='assets/images/appBackDark.png';
      logo='assets/images/darkLogo.png';
      menuIcon='assets/images/darkMenu.png';
      kPrimaryColor=const Color(0xffFECF3B);
      kBackgroundColor=Colors.black45;
      kTextPrimaryColor=const Color(0xffFECF3B);
      kTextHelperLightColor=Colors.white;
      kBottomBarColor= Colors.black87;
      newCardColor=Colors.transparent;
      kDropDownColor=Colors.grey[800];
      drawerBg='assets/images/drawerBg.png';
      kCardColor=Colors.grey[900];
      buttonBg='assets/images/darkButton.png';
       moneyPrice='assets/images/moneyDark.png';
       goldPrice='assets/images/goldDark.png';
      gazPrice='assets/images/gazDark.png';
       phoneIcon='assets/images/phoneDark.png';
       newsIcon='assets/images/newsDark.png';
       ballIcon='assets/images/ballDark.png';
      homeDrawer='assets/images/darkHome.png';
       billDrawer='assets/images/notiDark.png';
      priceMoneyDrawer='assets/images/priceDark.png';
      goldDrawer='assets/images/goldDark.png';
       gazDrawer='assets/images/gazDark.png';
       phoneDrawer='assets/images/phoneDark.png';
     newsDrawer='assets/images/newsDark.png';
      ballDrawer='assets/images/ballDark.png';
      convertDrawer='assets/images/convertDark.png';
     darkModeDrawer='assets/images/darkDark.png';
    contactDrawer='assets/images/contact_dark.png';
     share='assets/images/shareDark.png';
      logout='assets/images/logout.png';


      gazAppBar='assets/images/gazAppBar.png';
      priceAppBar='assets/images/priceAppBar.png';
      goldAppBar='assets/images/goldAppBar.png';


      print("IS DARK TRUE.....");
    }

    else{
      print("IS DARK FALSE....");

    }
  }
}