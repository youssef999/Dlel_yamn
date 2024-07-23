

import 'package:flutter/material.dart';
import 'package:freelancerApp/Core/resources/app_colors.dart';
import 'package:freelancerApp/core/resources/app_assets.dart';
import 'package:freelancerApp/core/widgets/custom_app_bar.dart';
import 'package:freelancerApp/features/home/controllers/home_controller.dart';
import 'package:get/get.dart';

import '../data_card_widget/data_card.dart';
import '../home/views/widgets/drop_down.dart';

// ignore: must_be_immutable
class DetailsView extends StatefulWidget {

  String dataKey;
  
  DetailsView({super.key,required this.dataKey});

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {

  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: CustomAppBar(widget.dataKey, context),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
             Padding(
                padding: const EdgeInsets.only(left:11,right: 11),
                child: Container(
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    color: Colors.white
                  ),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceAround,
                    children: [
                       Text("المناطق",
                      style:TextStyle(color: AppColors.txtPrimaryColor),
                      ),
                  
                  
                      DropDownWidget(items:
                       controller.placesList, hintText: 'المناطق', selectedValue: 'عدن',
                        onChanged: (){
                      },
                      ),
                      SizedBox(
                        height: 21,
                        child:Image.asset('assets/images/star.png',
                        fit: BoxFit.cover,),
                      ),
                    ],
                  ),
                ),
              ),

          ListView.builder(
            itemCount: 2,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return DataCardWidget(buyPrice: '321',
              sellPrice: '122',
              title: 'دهب عيار ٢٤',image: AppAssets.gold,

              );
            
          })
          
        ],),
      ),
    );
  }
}