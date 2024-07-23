


 import 'package:flutter/material.dart';
import 'package:freelancerApp/core/resources/app_styles.dart';
import 'package:freelancerApp/core/resources/colors.dart';
import 'package:freelancerApp/core/widgets/custom_app_bar.dart';
import 'package:get/get.dart';

class NotiView extends StatefulWidget {
   const NotiView({super.key});
 
   @override
   State<NotiView> createState() => _NotiViewState();
 }
 
 class _NotiViewState extends State<NotiView> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar:CustomAppBar('الاشعارات', context),
       body:Container(
        color:kPrimaryColor,
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: ListView(children: [
            const SizedBox(height: 12,),

            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: NotiCardWidget(),
                );
              
            })
         
            
           ],),
         ),
       ),
     );
   }
 }

 class NotiCardWidget extends StatelessWidget {
   const NotiCardWidget({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Container(
      decoration:BoxDecoration(
        borderRadius:BorderRadius.circular(14),
        color: Colors.white
      ),
      child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
         const SizedBox(height: 10,),
          Row(children: [
            Text('تم تحديث سعر الذهب',
            style:Styles.darkTextStyle,
            )
          ],)
        
        ],),
      )
     );
   }
 }