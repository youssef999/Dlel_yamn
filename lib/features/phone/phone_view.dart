

 import 'package:flutter/material.dart';
import 'package:freelancerApp/core/resources/app_styles.dart';
import 'package:freelancerApp/core/resources/colors.dart';
import 'package:freelancerApp/features/phone/phone_controller.dart';
import 'package:freelancerApp/features/phone/phone_details.dart';

import 'package:get/get.dart';

import '../../core/widgets/custom_app_bar.dart';

class PhoneView extends StatefulWidget {
  const PhoneView({super.key});

  @override
  State<PhoneView> createState() => _PhoneViewState();
}
class _PhoneViewState extends State<PhoneView> {
  @override
  Widget build(BuildContext context) {

    PhoneController controller=Get.put(PhoneController());

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar:CustomAppBar('phone', context),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
         
             decoration:BoxDecoration(
               gradient: LinearGradient(
                  colors: [
                  const Color(0xffC7E1EE),
               Colors.blue[200]!,
               
                  ],
            ),
          ),
          child: ListView(
            children: [
              const SizedBox(height: 21,),

          
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: controller.phoneImage.length,
                itemBuilder: (context, index) {
          
                  return PhoneCardWidget(image: controller.phoneImage[index], 
                  txt: controller.phoneName[index]);
                
              }, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),)
          
            
          
          
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class PhoneCardWidget extends StatelessWidget {

  String image;
  String txt;

 PhoneCardWidget({super.key,required this.image,required this.txt});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width*0.46,
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(12),
            color: Colors.white,
      
          ),
          child:Image.asset(image,height: 100,width: 70,),
      
        ),
        const SizedBox(height: 10,),
      
        Text(txt,style: Styles.darkTextStyle)
      
      
      ],),
      onTap:(){
        Get.to(PhoneDetailsView(
          phoneType: txt
        ));
      },
    );
  }
}