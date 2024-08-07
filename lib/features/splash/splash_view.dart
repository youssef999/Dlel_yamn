

import 'package:flutter/material.dart';
import 'package:freelancerApp/core/resources/app_assets.dart';
import 'package:freelancerApp/core/resources/colors.dart';
import 'package:freelancerApp/features/auth/views/login_view.dart';
import 'package:freelancerApp/features/home/views/bottom_bar.dart';
import 'package:freelancerApp/features/home/views/home_view.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {


  @override
  void initState() {

    final box=GetStorage();
    String email=box.read('email')??'x';
   

   Future.delayed(const Duration(seconds: 3), () {

    if(email=='x'){
  Get.offAll(const LoginView());
    }else{
      Get.offAll( RootView());
     // Get.offAll(const HomeView());
    }

    
      
   });
   
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          SizedBox(
            height: 3000,
            width: MediaQuery.of(context).size.width,
            child:Image.asset(backgroundImage,
              fit:BoxFit.fill,),
          ),
          Center(
            child: ListView(

              children: [
              const SizedBox(height: 201,),
              SizedBox(
                height: 260,
                child: Image.asset(logo,fit: BoxFit.contain,),
              ),
              const SizedBox(height: 21,),

            ],),
          ),
        ],
      ),

    );
  }
}