

import 'package:flutter/material.dart';
import 'package:freelancerApp/core/resources/app_assets.dart';
import 'package:freelancerApp/core/resources/colors.dart';
import 'package:freelancerApp/features/auth/views/login_view.dart';
import 'package:freelancerApp/features/home/views/home_view.dart';
import 'package:get/get.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {


  @override
  void initState() {
   

   Future.delayed(const Duration(seconds: 3), () {

      Get.offAll(const LoginView());
      
   });
   
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
     //   color:kPrimaryColor,
        decoration:BoxDecoration(
          gradient: LinearGradient(
            colors: [
              kPrimaryColor,
              Colors.white
            ],
        )),
        child: Center(
          child: ListView(
            
            children: [
            const SizedBox(height: 201,),
            SizedBox(
              height: 260,
              child: Image.asset(AppAssets.logo,fit: BoxFit.contain,),
            ),
            const SizedBox(height: 21,),
          
          ],),
        ),
      ),

    );
  }
}