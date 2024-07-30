


 import 'package:flutter/material.dart';
import 'package:freelancerApp/core/resources/app_styles.dart';
import 'package:freelancerApp/core/resources/colors.dart';
import 'package:freelancerApp/core/widgets/custom_app_bar.dart';
import 'package:freelancerApp/features/notifications/noti_controller.dart';
import 'package:get/get.dart';

class NotiView extends StatefulWidget {
   const NotiView({super.key});
 
   @override
   State<NotiView> createState() => _NotiViewState();
 }
 
 class _NotiViewState extends State<NotiView> {

  NotiController controller=Get.put(NotiController());
  @override
  void initState() {
    controller.getNotifications();
    super.initState();
  }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar:CustomAppBar('الاشعارات', context),
       body:Container(
      
         decoration: BoxDecoration(
                gradient:  LinearGradient(
              colors: [
               const Color(0xffC7E1EE),
               Colors.blue[200]!,
           
              ],
            )
            )
        ,
       // color:
        //Color(0XXFFDFEBF6),
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: GetBuilder<NotiController>(
             builder: (_) {
               return ListView(children: [
                const SizedBox(height: 12,),
               
                ListView.builder(
                  itemCount: controller.notiDataList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {


                    if(controller.notiDataList.isEmpty){

                      return  Column(children: [


                        Image.asset("assets/images/noti.png",height: 300,
                        fit:BoxFit.fill,
                        
                        ),


                        Text('لا يوجد اشعارات',style: Styles.lightTextStyleBold)

                      ],);




                    }
                    
                    else{


                      return  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: NotiCardWidget(
                        data: controller.notiDataList[index],
                      ),
                    );

                    }
                    
                  
                })
                        
                
               ],);
             }
           ),
         ),
       ),
     );
   }
 }

 class NotiCardWidget extends StatelessWidget {

  Map<String,dynamic>data;

  
   NotiCardWidget({super.key,required this.data});
 
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
            Text(
            data['msg'],
            style:Styles.darkTextStyle,
            )
          ],)
        
        ],),
      )
     );
   }
 }