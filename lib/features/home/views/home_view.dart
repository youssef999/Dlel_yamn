


import 'package:flutter/material.dart';
import 'package:freelancerApp/Core/resources/app_colors.dart';
import 'package:freelancerApp/core/resources/app_assets.dart';
import 'package:freelancerApp/core/resources/colors.dart';
import 'package:freelancerApp/core/widgets/Custom_button.dart';
import 'package:freelancerApp/core/widgets/custom_drawer.dart';
import 'package:freelancerApp/core/widgets/custom_textformfield.dart';
import 'package:freelancerApp/features/details/details_view.dart';
import 'package:freelancerApp/features/home/controllers/home_controller.dart';
import 'package:freelancerApp/features/home/views/widgets/drop_down.dart';
import 'package:freelancerApp/features/news/news_view.dart';
import 'package:get/get.dart';
import '../../../core/resources/app_styles.dart';
import '../../data_card_widget/data_card.dart';
import '../../football/football_view.dart';
import '../../phone/phone_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {


 HomeController controller=Get.put(HomeController());

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {

    //controller.getPlaces();
   
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
       key: scaffoldKey,
      drawer: CustomDrawer(),
      backgroundColor: Colors.blue[200]!,
      body:Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
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
          
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                          
                          Image.asset(AppAssets.logo,fit:BoxFit.cover,
                          width: 100,height: 50,
                          ),
                 
                          
                  InkWell(
                    child: SizedBox(
                      height: 30,
                      child:Image.asset('assets/images/menu.png',
                      fit: BoxFit.cover,),
                    ),
                    onTap:(){
                      scaffoldKey.currentState?.openDrawer();
                    },
                  ),
                          
                 
                          
                ],),
              ),
              const SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: CustomTextFormField(hint: 'البحث', obs: false, controller:controller.searchController,
                icon:Icons.search,
                 ),
              ),
              const SizedBox(height: 12,),
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
              const SizedBox(height: 12,),

              Padding(
                padding: const EdgeInsets.all(3.0),
                child: ListView.builder(
                
                  itemCount:4,
                  physics:const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                  return  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DataCardWidget(
                      buyPrice: '200', image: 'assets/images/gold.png', sellPrice: '300', title: 'جرام دهب عيار ٢١',

                    ),
                  );
                },  scrollDirection: Axis.vertical, shrinkWrap: true,),
              ),


              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Text('دليل اليمن',
                style:Styles.primaryTextStyleLarge,
                ),
              ),

              Row(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                InkWell(
                  child: AppCardWidget(image: 'assets/images/moneyPrice.png',
                   txt: 'أسعار العملات',),
                   onTap:(){
                    Get.to(DetailsView(
                      dataKey: 'money',
                    ));
                   },
                ),
                   InkWell(
                     child: AppCardWidget(image: 'assets/images/goldPrice.png',
                                      txt: 'اسعار الذهب',),
                                      onTap:(){
                                         Get.to(DetailsView(
                      dataKey: 'gold',
                    ));
                          },
                   ),
                   InkWell(
                     child: AppCardWidget(image: 'assets/images/gazPrice.png',
                                      txt: 'أسعار المحروقات',),
                                      onTap:(){
                                         Get.to(DetailsView(
                      dataKey: 'gaz',
                    ));
                                      },
                   )
              ],),

              const SizedBox(height: 10,),


               Row(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                InkWell(
                  child: AppCardWidget(image: 'assets/images/phone.png',
                   txt: 'دليل الأرقام',),
                   onTap:(){

                    Get.to(const PhoneView());


                   },
                ),
                   InkWell(
                     child: AppCardWidget(image: 'assets/images/news.png',
                                      txt: "أخبار اقتصادية",),
                                      onTap:(){
                                         Get.to(NewsView(
                      txt: "news",
                                         ));
                                      },
                   ),
                   InkWell(
                     child: AppCardWidget(image: 'assets/images/ball.png',
                                      txt: 'دليل المباريات',),
                                      onTap:(){
                                        Get.to(const FootballView());
                                      },
                   )
              ],),

               const SizedBox(height: 10,),




          
          
            ],
          ),
        ),
      ),
    );
  }
}




// ignore: must_be_immutable
class AppCardWidget extends StatelessWidget {
  String image;
  String txt;

AppCardWidget({super.key,required this.image,required this.txt});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:90,
      //width:MediaQuery.of(context).size.width*0.24,
      decoration:BoxDecoration(
        borderRadius:BorderRadius.circular(14),
        color:Colors.white
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
        
          Text(txt,style:Styles.primaryTextStyleSmall,),
        
          const SizedBox(width: 10,),


          Image.asset(image,
          height: 23,fit:BoxFit.cover,
          )
        
        
        ],),
      ),

    );
  }
}

// ignore: must_be_immutable

