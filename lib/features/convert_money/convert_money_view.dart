import 'package:flutter/material.dart';
import 'package:freelancerApp/core/resources/colors.dart';
import 'package:freelancerApp/core/widgets/Custom_button.dart';
import 'package:freelancerApp/core/widgets/custom_app_bar.dart';
import 'package:freelancerApp/features/convert_money/convert_controller.dart';
import 'package:get/get.dart';

import '../../core/resources/app_styles.dart';

class ConvertMoney extends StatefulWidget {
  const ConvertMoney({super.key});

  @override
  State<ConvertMoney> createState() => _ConvertMoneyState();
}

class _ConvertMoneyState extends State<ConvertMoney> {
  @override
  Widget build(BuildContext context) {
    ConvertController controller = Get.put(ConvertController());
    return Scaffold(
        appBar: CustomAppBar('تحويل العملات ', context),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GetBuilder<ConvertController>(
            assignId: true,
            builder: (logic) {
              return ListView(children: [
                const SizedBox(height: 21,),
                Row(children: [
                  Column(children: [
                    Text("العملة المراد تحويلها", style: Styles.darkTextStyle,),
                    const SizedBox(height: 5,),

                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.grey[100]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: DropdownButton<String>(
                          underline: const SizedBox(),
                          value: controller.selectCurrency,
                          onChanged: (String? newValue) {
                            controller.changeCurrency(newValue!);
                          },
                          items: controller.currencyList
                          //<String>['One', 'Two', 'Three', 'Four']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),

                            );
                          }).toList(),
                        ),
                      ),
                    )

                  ],),

                  const SizedBox(width: 8,),

                  Column(
                    children: [
                      Icon(Icons.arrow_back, color: kPrimaryColor,),
                      Icon(Icons.arrow_forward, color: kPrimaryColor,),
                    ],
                  ),
                  const SizedBox(width: 8,),

                  Column(children: [
                    Text("العملة المراد التحويل اليها ",
                      style: Styles.darkTextStyle,),
                    const SizedBox(height: 5,),

                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.grey[100]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: DropdownButton<String>(
                          underline: const SizedBox(),
                          value: controller.selectCurrency2,
                          onChanged: (String? newValue) {
                            controller.changeCurrency2(newValue!);
                          },
                          items: controller.currencyList2
                          //<String>['One', 'Two', 'Three', 'Four']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),

                            );
                          }).toList(),
                        ),
                      ),
                    )

                  ],),


                ],),
                const SizedBox(height: 21,),
                Row(children: [
                  Container(
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[100]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: controller.priceController,
                      ),
                    ),
                  ),

                  const SizedBox(width: 12,),

                  Icon(Icons.arrow_forward, color: kPrimaryColor,),
                  const SizedBox(width: 33,),
                  Container(
                    width: 122,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[100]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text(
                        "1200", style: Styles.darkTextStyle,)),

                    ),
                  )

                ],),
                
                const SizedBox(height: 60,),
                
                SizedBox(
                    width: 90,
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        CustomButton(text: 'تحويل', onPressed: (){}),
                      ],
                    ))
              ]);
            },
          ),
        ));
  }
}