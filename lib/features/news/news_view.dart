

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:freelancerApp/core/resources/colors.dart';
import 'package:freelancerApp/core/widgets/custom_app_bar.dart';
import 'package:freelancerApp/features/home/controllers/home_controller.dart';
import 'package:get/get.dart';

import '../../core/resources/app_styles.dart';

// ignore: must_be_immutable
class NewsView extends StatefulWidget {
  String txt;
 
 NewsView({super.key,required this.txt});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {



  HomeController homeController = Get.put(HomeController());
  @override
  void initState() {

    homeController.getNewsData();
  
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(widget.txt, context),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: GetBuilder<HomeController>(
          builder: (_) {
            return ListView(children: [
            
              ListView.builder(
                itemCount:homeController.newsDataList.length,
                physics:const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                
                return  Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: NewsCardWidget(
                    data: homeController.newsDataList[index],
                  ),
                );
              })
            
            
              
            ],);
          }
        ),
      ),
    );
  }
}

class NewsCardWidget extends StatelessWidget {

  Map<String,dynamic>data;
  NewsCardWidget({super.key,required this.data});



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 181,
      decoration:BoxDecoration(
        borderRadius:BorderRadius.circular(12),
        color:kPrimaryColor,
        boxShadow: [
          BoxShadow(
            color: kPrimaryColor.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child:Column(
        children: [
          Image.network(
            data['image']
            ,height: 107,
          width: MediaQuery.of(context).size.width,
          fit:BoxFit.cover,
          ),
          const SizedBox(height: 9,),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(data['txt'],
            style:Styles.lightTextStyle
            ),
          )


        ],
      ),
    );
  }
}