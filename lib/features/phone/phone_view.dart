import 'package:flutter/material.dart';
import 'package:freelancerApp/core/resources/app_styles.dart';
import 'package:freelancerApp/core/resources/colors.dart';
import 'package:freelancerApp/features/phone/phone_controller.dart';
import 'package:freelancerApp/features/phone/phone_details.dart';

import 'package:get/get.dart';

import '../../core/widgets/bottom_navber.dart';
import '../../core/widgets/custom_app_bar.dart';
import '../home/controllers/root_controller.dart';

class PhoneView extends StatefulWidget {
  const PhoneView({super.key});

  @override
  State<PhoneView> createState() => _PhoneViewState();
}

class _PhoneViewState extends State<PhoneView> {
  @override
  Widget build(BuildContext context) {
    PhoneController controller = Get.put(PhoneController());
    RootController rootController=Get.put(RootController());

    return Scaffold(
      bottomNavigationBar:buildBottomNavigationMenu(context,rootController
          ,  1 ),
      backgroundColor: kBackgroundColor,
      //  appBar:CustomAppBar('phone', context),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Stack(
          children: [
            SizedBox(
            height: 3000,
            child:Image.asset('assets/images/appBackground.png',
            fit:BoxFit.fill,),
          ),
            Container(
             // decoration: AppDecoration,
              child: ListView(
                children: [
                  Image.asset(
                    'assets/images/phoneDrawer.png',
                    //height: 55,
                    width: MediaQuery.of(context).size.width,
                    fit:BoxFit.fill,
                  ),
                  const SizedBox(height: 14),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.phoneImage.length,
                      itemBuilder: (context, index) {
                        return PhoneCardWidget(
                            image: controller.phoneImage[index],
                            txt: controller.phoneName[index]);
                      },
                      gridDelegate:
                          const
         SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.92,
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 1,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class PhoneCardWidget extends StatelessWidget {
  String image;
  String txt;

  PhoneCardWidget({super.key, required this.image, required this.txt});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          SizedBox(
            height: 130,
            width: 164,
            child: Container(
              decoration:BoxDecoration(
                  color: const Color(0XFFcfe2f3).withOpacity(0.5),
                borderRadius:BorderRadius.circular(22)
              ),
             // elevation: 10,
              child: Image.asset(
                image,height: 100,
                width: 70,
              )),
          ),
          // Container(
          //   width: MediaQuery.of(context).size.width * 0.46,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(12),
          //     color: Colors.white,
          //   ),
          //   child: Image.asset(
          //     image,
          //     height: 100,
          //     width: 70,
          //   ),
          // ),
          const SizedBox(
            height: 2
          ),
          Text(txt, style: Styles.darkTextStyle),
           const SizedBox(
            height: 10,
          ),
        ],
      ),
      onTap: () {
        Get.to(PhoneDetailsView(phoneType: txt));
      },
    );
  }
}
