


import 'package:flutter/material.dart';
import 'package:freelancerApp/core/widgets/Custom_button.dart';
import 'package:freelancerApp/core/widgets/custom_app_bar.dart';
import 'package:freelancerApp/core/widgets/custom_textformfield.dart';
import 'package:freelancerApp/features/contact/contact_controller.dart';
import 'package:get/get.dart';

import '../../core/resources/colors.dart';
import '../../core/widgets/bottom_navber.dart';
import '../home/controllers/root_controller.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {

    ContactController controller=Get.put(ContactController());
    RootController rootController=Get.put(RootController());

    return Scaffold(
      bottomNavigationBar:buildBottomNavigationMenu(context,rootController
          ,  1 ),
      
      appBar:CustomAppBar('تواصل معنا', context),
      body:Padding(
        padding: const EdgeInsets.all(14.0),
        child: Container(
          decoration: AppDecoration,
          child: GetBuilder<ContactController>(
            builder: (_) {
              return ListView(children: [
                const SizedBox(height: 30,),

                CustomTextFormField(hint: 'الاسم', obs: false, controller: controller.nameController,
                icon:Icons.person, color:Colors.black
                ),

                const SizedBox(height: 15,),

                 CustomTextFormField(hint: 'الايميل', obs: false, controller: controller.emailController,
                icon:Icons.email, color:Colors.black
                ),

                const SizedBox(height: 15,),

                 CustomTextFormField(hint: 'الموضوع', obs: false, controller: controller.subjectController,
                icon:Icons.subject, color:Colors.black,max: 3,
                ),
                 const SizedBox(height: 15,),

                 CustomTextFormField(hint: 'الرسالة', obs: false, controller: controller.messageController,
                icon:Icons.message, color:Colors.black,max: 5,
                ),

                    const SizedBox(height: 30,),

                (controller.isLoading==false)?

                    CustomButton(text: 'ارسال', onPressed: (){


                      controller.sendMessageToAdmin();

                    }):
                    const Center(child: CircularProgressIndicator(),)





              ],);
            }
          ),
        ),
      ),
    );
  }
}