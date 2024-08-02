import 'dart:convert';
import 'package:flutter/material.dart';


dynamic kPrimaryColor = const Color(0xff346EA2);
dynamic kBackgroundColor = Colors.blue[100];
dynamic kTextPrimaryColor = const Color(0xff346EA2);
dynamic kTextHelperLightColor=Colors.white;
dynamic kTextHelperDarkColor=Colors.black;

 dynamic backgroundColor = Colors.white;
 dynamic appBarColor = Colors.grey[100];
dynamic iconColor = Colors.blue;

dynamic kButtonColor=   const Color(0xff346EA2);
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

   
    

    




