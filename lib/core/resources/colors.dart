import 'dart:convert';
import 'package:flutter/material.dart';


dynamic kPrimaryColor = const Color(0xff346EA2);
dynamic kBackgroundColor = Colors.blue[100];
dynamic kTextPrimaryColor = const Color(0xff346EA2);
dynamic kTextHelperLightColor=Colors.white;
dynamic kDropDownColor=Colors.white;
dynamic kTextHelperDarkColor=Colors.black;

dynamic kBottomBarColor=const Color(0xffDFEBF6);

 dynamic backgroundColor = Colors.white;

 dynamic kDrawerText = Colors.white;

 dynamic appBarColor = Colors.grey[100];
dynamic iconColor = Colors.blue;

dynamic newCardColor=Colors.white;

dynamic kButtonColor=   const Color(0xff346EA2);

String drawerBg='assets/images/drawer_color.png';
String backgroundImage='assets/images/appBackground.png';
String menuIcon='assets/images/menu.png';
String logo='assets/images/logo.png';
String buttonBg='assets/images/button.png';


String moneyPrice='assets/images/moneyPrice.png';
String goldPrice='assets/images/goldPrice.png';
String gazPrice='assets/images/gazPrice.png';
String phoneIcon='assets/images/phone2.png';
String newsIcon='assets/images/news.png';
String ballIcon='assets/images/ball.png';


String homeDrawer='assets/images/home.png';
String billDrawer='assets/images/bill.png';
String priceMoneyDrawer='assets/images/priceMoney.png';
String goldDrawer='assets/images/goldMoney.png';
String gazDrawer='assets/images/gaz.png';
String phoneDrawer='assets/images/phoneDrawerIcon.png';
String newsDrawer='assets/images/newsDrawerIcon.png';
String ballDrawer='assets/images/ball.png';
String convertDrawer='assets/images/convert.png';
String darkModeDrawer='assets/images/darkMode.png';
String contactDrawer='assets/images/contact.png';
String share='assets/images/share2.png';
String logout='assets/images/logout.png';


String gazAppBar='assets/images/gazDrawer.png';
String priceAppBar='assets/images/priceDrawer.png';
String goldAppBar='assets/images/goldDrawer.png';



// 'assets/images/button.png',
//<Color>[Color(0xB25E34A2), Color(0xB2346EA2)];
//const Color(0xff346EA3);

dynamic kCardColor=const Color(0xffDFEBF6);

Decoration AppDecoration=  const BoxDecoration(
            gradient: RadialGradient(
              center: Alignment(0.919, 0.58),
              radius: 0.27,
              colors: <Color>[Color(0xE5C9DEF2), Color(0xE5C0D9F0), Color(0xE5CADEF2)],
              stops: <double>[0.2, 0.885, 1],
            ),
          );


Decoration AppDecorationDrawer=BoxDecoration(
   gradient: RadialGradient(
              center: const Alignment(0.919, 0.58),
              radius: 0.27,
              colors: <Color>[const Color(0x346EA2).withOpacity(0.1), 
              const Color(0x346EA2).withOpacity(0.1), const Color(0x346EA2).withOpacity(0.1)],
              //stops: const <double>[0.2, 0.885, 1],
            ),
    // gradient: LinearGradient(
    //   colors: [
    //     const Color(0x346EA2).withOpacity(0.7),
    //     //const Color(0xfffffff),
    //   ],
    // )
    );



String currency='KWD';


  const baseUrl = //'https://tickitat.net/tik_tak';
      'http://10.0.2.2/tik_tak/';

  String basicUrl =
      'Basic ${base64Encode(utf8.encode('realStateApp:realStateApp2024'))}';

 var headers = {
      'Content-Type': 'application/json',
      'Authorization': basicUrl,
    };

   
    

    




