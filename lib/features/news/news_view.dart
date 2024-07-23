

import 'package:flutter/material.dart';
import 'package:freelancerApp/core/resources/colors.dart';
import 'package:freelancerApp/core/widgets/custom_app_bar.dart';

import '../../core/resources/app_styles.dart';

// ignore: must_be_immutable
class NewsView extends StatefulWidget {
  String txt;
 
 NewsView({super.key,required this.txt});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(widget.txt, context),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [

          ListView.builder(
            itemCount:4,
            physics:const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
            
            return const Padding(
              padding: EdgeInsets.all(12.0),
              child: NewsCardWidget(),
            );
          })


          
        ],),
      ),
    );
  }
}

class NewsCardWidget extends StatelessWidget {


  const NewsCardWidget({super.key});

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
          Image.network('https://dalyjobs.com/wp-content/uploads/2022/11/best-banks-2021-40543452.jpg',height: 107,
          width: MediaQuery.of(context).size.width,
          fit:BoxFit.cover,
          ),
          const SizedBox(height: 9,),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text('البنك المركزي يدرج خدمة دفع المشتريات باستخدام “إنستاباي” خلال ايام',
            style:Styles.lightTextStyle
            ),
          )


        ],
      ),
    );
  }
}