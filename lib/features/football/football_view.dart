

 import 'package:flutter/material.dart';
import 'package:freelancerApp/core/widgets/custom_app_bar.dart';

import '../../core/resources/app_styles.dart';

class FootballView extends StatefulWidget {
  const FootballView({super.key});

  @override
  State<FootballView> createState() => _FootballViewState();
}

class _FootballViewState extends State<FootballView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar('ball', context),
      body:Container(
         decoration:BoxDecoration(
             gradient: LinearGradient(
                colors: [
                  Colors.blue[200]!,
                  Colors.white,
             
                ],

          )),
        child: ListView(
          children: [
            const SizedBox(height: 21,),
            Text('الجمعة 14 يونيو 2024',style: Styles.darkTextStyle,),

  const SizedBox(height: 21,),
            
            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (context, index) {

                return const Padding(padding: EdgeInsets.all(8.0),
                child:MatchCardWidget(),
                );
              
            })
          ],
        ),
      ),
    );
  }
}

class MatchCardWidget extends StatelessWidget {
  const MatchCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 310,
        
          decoration:BoxDecoration(borderRadius:BorderRadius.circular(18), color:Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(children: [
        
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage:NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  const SizedBox(width: 5,),
                  Text('ليفلربول',style: Styles.darkTextStyle),
                ],
              ),
        
        
              const SizedBox(width: 10,),
        
              Text('03:00 م',
              style:Styles.primaryTextStyle,
              ),
        
        
                const SizedBox(width: 10,),
               Row(
                 children: [
                   Text('ريال مدريد',style: Styles.darkTextStyle),
                    const SizedBox(width: 5,),
                   const CircleAvatar(
                    backgroundImage:NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                             ),
                               
                              
                 ],
               ),
              
            ],),
          ),
        ),
        

        Column(
          children: [
            Text("التعليق",style: Styles.darkTextStyle,),
            Text(".....",style: Styles.primaryTextStyle,),
          ],
        )
      ],
    );
  }
}