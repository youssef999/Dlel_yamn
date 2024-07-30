



 import 'package:flutter/material.dart';
import 'package:freelancerApp/Core/resources/app_colors.dart';
import 'package:freelancerApp/core/resources/app_assets.dart';
import 'package:freelancerApp/core/resources/app_styles.dart';
import 'package:freelancerApp/core/resources/colors.dart';
import 'package:freelancerApp/features/auth/views/login_view.dart';
import 'package:freelancerApp/features/contact/contact_view.dart';
import 'package:freelancerApp/features/convert_money/convert_money_view.dart';
import 'package:freelancerApp/features/details/details_view.dart';
import 'package:freelancerApp/features/football/football_view.dart';
import 'package:freelancerApp/features/news/news_view.dart';
import 'package:freelancerApp/features/phone/phone_view.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../features/notifications/noti_view.dart';


 Widget CustomDrawer(){

  return Drawer(
    backgroundColor: AppColors.primaryBGLightColor,
    child:Container(
        decoration:BoxDecoration(
            gradient: LinearGradient(
              colors: [

               const Color(0xffC7E1EE),
               Colors.blue[200]!,
               // kPrimaryColor,
               // kPrimaryColor,
              ],
            )),


    //  height: 200,
      child: ListView(children: [
        const SizedBox(height: 6,),

        Image.asset(AppAssets.logo,fit:BoxFit.cover,
        height: 173,
        ),


        Divider(color:Colors.grey[100],),
        const SizedBox(height: 20,),
      
        DrawerItemWidget(image: 'assets/images/home.png', txt: 'الرئيسية',),
        const SizedBox(height: 20,),
        InkWell(child: DrawerItemWidget(image: 'assets/images/bill.png',
         txt: 'اشعارات',),
         onTap:(){
          Get.to(const NotiView());
         },
         ),
        const SizedBox(height: 20,),
       
       
        InkWell(child: DrawerItemWidget(
          image: 'assets/images/priceMoney.png', txt: 'اسعار العملات',),
          
          onTap:(){
            Get.to(DetailsView(
              
              dataKey: 'money'

            ));
          },
          ),
      
      
      
        const SizedBox(height: 20,),
        InkWell(child: DrawerItemWidget
        (image: 'assets/images/goldMoney.png', txt: 'اسعار الذهب',),
        onTap:(){
           Get.to(DetailsView(
              
              dataKey: 'gold'

            ));
        },
        ),


        const SizedBox(height: 20,),
        InkWell(child: DrawerItemWidget
        (image: 'assets/images/gaz.png', txt: 'اسعار المحروقات',),
        
        onTap:(){

           Get.to(DetailsView(
            
              dataKey: 'gaz'

            ));
        },
        ),

        const SizedBox(height: 20,),
        InkWell(child:
         DrawerItemWidget(image: 'assets/images/phoneDrawerIcon.png',
          txt: 'دليل الارقام',),
          onTap:()
          {
            Get.to(const PhoneView());
          },
          
          ),


        const SizedBox(height: 20,),
        InkWell(child: DrawerItemWidget
        (image: 'assets/images/newsDrawerIcon.png', txt: 'أخبار اقتصادية',),
        onTap:(){
          Get.to(NewsView(txt:''));
        },
        ),

        const SizedBox(height: 20,),
        InkWell(child: DrawerItemWidget
        (image: 'assets/images/ball.png', txt: 'دليل المباريات',),
        
        onTap:(){

          Get.to(const FootballView());
        },
        ),
        const SizedBox(height: 20,),
        InkWell(child: DrawerItemWidget(image: 'assets/images/convert.png',
          txt: 'تحويل العملات',),

        onTap:(){
          Get.to(const ConvertMoney());
        },
        ),


        const SizedBox(height: 20,),
        DrawerItemWidget(image: 'assets/images/lang.png', txt: 'اللغة الانجليزية',),
        const SizedBox(height: 20,),
        InkWell(child: DrawerItemWidget(image: 'assets/images/contact.png', txt: 'تواصل معنا',),
        onTap:(){

          Get.to(const ContactView());

        },
        ),
        const SizedBox(height: 20,),
        DrawerItemWidget(image: 'assets/images/share.png', txt: 'شارك التطبيق',),

        const SizedBox(height: 20,),
        InkWell(child: DrawerItemWidget(image: 'assets/images/logout.png', txt: 'تسجيل الخروج',),
        onTap:(){
          final box=GetStorage();
          box.remove('email');
          Get.offAll(const LoginView());

        },
        ),
        const SizedBox(height: 20,),


        //lang.png //share.png
        //convert.png //contact.png

        //دليل المباريات


      ],),
    ));
 }

 class DrawerItemWidget extends StatefulWidget {

  String image;
  String txt;
   
  DrawerItemWidget({super.key,required this.image,required this.txt});
 
   @override
   State<DrawerItemWidget> createState() => _DrawerItemWidgetState();
 }
 
 class _DrawerItemWidgetState extends State<DrawerItemWidget> {
   @override
   Widget build(BuildContext context) {
     return Row(children: [
       const SizedBox(width: 16,),
      Image.asset(widget.image,width: 20,height: 20,),
      const SizedBox(width: 16,),
      Text(widget.txt,style:Styles.lightTextStyle,),
     ],);
   }
 }