

 import 'package:flutter/material.dart';

import '../../core/resources/app_assets.dart';
import '../../core/resources/app_styles.dart';
import '../../core/resources/colors.dart';

// ignore: must_be_immutable
class DataCardWidget extends StatelessWidget {

  String title;
  String image;
  String buyPrice;
  String sellPrice;

DataCardWidget({super.key,
  required this.buyPrice,required this.image,
  required this.sellPrice,required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
        borderRadius:BorderRadius.circular(12),
        color:Colors.white
      ),
      child:Column(children: [
        Container(
          decoration:BoxDecoration(
            color:Colors.white,
            borderRadius:BorderRadius.circular(7)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title,
            style:Styles.primaryTextStyleBold
            ),
          ),
        ),
        const SizedBox(height: 11,),
        Container(
          color:kCardColor,
          child: Padding(
            padding: const EdgeInsets.only(left:15.0,right:15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                
                  Column(children: [
                
                    Text('سعر الشراء',
                    style:Styles.primaryTextStyleBold
                    ),
                    const SizedBox(height: 6,),
                    Text(' `${buyPrice}'+"﷼",
                    style:Styles.primaryTextStyle
                    ),
                      const SizedBox(height: 11,),
                        
                  ],),
                
                  Column(children: [
                
                    Text("عدن",style:Styles.primaryTextStyle),
                
                    Image.asset(AppAssets.gold,height: 40,),
                    const SizedBox(height: 3,),
                    Image.asset(AppAssets.arrowSt,height: 40,),
                
                
                
                
                  ],),
                
                   Column(children: [
                    Text('سعر البيع',
                    style:Styles.primaryTextStyleBold
                    ),
                    const SizedBox(height: 6,),
                    Text(' `${sellPrice} '+"﷼",
                    style:Styles.primaryTextStyle
                    ),
                   const SizedBox(height: 11,),
                
                  ],),
                
                
                ],),
          
                const SizedBox(height: 7,),
          
                Container(
                  decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(12),
                    color:kButtonColor
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('اخر تحديث اليوم عند الساعة 12:00 ص',
                    style:Styles.lightTextStyle,
                    ),
                  ),
                ),
                 const SizedBox(height: 12,),
          
              ],
            ),
          ),
        )




      ],),
    );
  }}