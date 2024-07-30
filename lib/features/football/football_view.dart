// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:freelancerApp/core/widgets/custom_app_bar.dart';
import 'package:freelancerApp/features/football/football_controller.dart';
import 'package:get/get.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../core/resources/app_styles.dart';

class FootballView extends StatefulWidget {
  const FootballView({super.key});

  @override
  State<FootballView> createState() => _FootballViewState();
}

class _FootballViewState extends State<FootballView> {
  FootballController controller = Get.put(FootballController());

  @override
  void initState() {
    controller.getFootballDataToday();
    controller.getDate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('ball', context),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              const Color(0xffC7E1EE),
               Colors.blue[200]!,
            ],
          )),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GetBuilder<FootballController>(
              builder: (_) {
                return ListView(
                  children: [
                    const SizedBox(
                      height: 21,
                    ),
                
                    // Here, default theme colors are used for activeBgColor, activeFgColor, inactiveBgColor and inactiveFgColor
                    ToggleSwitch(
                      initialLabelIndex: controller.toogleIndex,
                      totalSwitches: 2,
                      fontSize: 18,
                      minWidth: 200,
                      labels: const ['مباريات اليوم ','مباريات الغد '],
                      
                      onToggle: (index) {
                        print('switched to: $index');
                       controller.changeToogle(index!);
                      },
                    ),
                  const  SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Row(

                         // mainAxisAlignment:MainAxisAlignment.start,
                          children: [
                            Text(
                            controller.constDateVal,
                             style: TextStyle(color:Colors.grey[600]!,fontSize: 18),
                            ),
                            SizedBox(width: 10,),
                            
                            Text(
                              controller.dayValue,
                              style: TextStyle(color:Colors.grey[600]!,fontSize: 18),
                            )
                          ],
                        ),
                      ],
                    ),
                
                    const SizedBox(
                      height: 6,
                    ),
                
                    ListView.builder(
                        itemCount: controller.footballData.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return  Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: MatchCardWidget(
                              controller: controller,
                              data: controller.footballData[index],
                            ),
                          );
                        })
                  ],
                );
              }
            ),
          ),
        ),
      ),
    );
  }
}

class MatchCardWidget extends StatelessWidget {

  FootballController controller;

  Map<String,dynamic> data;
 
 MatchCardWidget({super.key,required this.controller,required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 310,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                         CircleAvatar(
                          backgroundImage: NetworkImage(
                            data['imageA']
                             // 'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        )),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(data['teamA'], style: Styles.darkTextStyle),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                    data['time'],
                      style: Styles.primaryTextStyle,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        Text(data['teamB'], style: Styles.darkTextStyle),
                        const SizedBox(
                          width: 5,
                        ),
                       CircleAvatar(
                          backgroundImage: NetworkImage(
                            data['imageB'])
                        ),
                      ],
                    ),
                  ],
                ),
               const SizedBox(height: 10,),
                 Row(
                 // mainAxisAlignment:MainAxisAlignment.spaceAround,
          children: [
            const Text(
              "التعليق",
              style: const TextStyle(
                color:Colors.grey
              )
            ),
           const SizedBox(width: 5,),
            Text(
         "     :   "+  data['comment']+"  ",
              style: const TextStyle(
                color:Colors.grey
              )
            ),
          ],
        )
              ],
            ),
          ),
        ),
       
      ],
    );
  }
}
