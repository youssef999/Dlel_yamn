


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class PhoneController extends GetxController{


List<String>phoneImage=[
  'assets/images/shopCard.png',
  'assets/images/hospital.png',
  'assets/images/learnCard.png',
  'assets/images/phoneCard.png',
  'assets/images/hotelCard.png',
    "assets/images/loveCard.png",
  'assets/images/tww.png',
  "assets/images/engCard.png",
    "assets/images/govCard.png",
    "assets/images/bagCard.png"
];


List<String>phoneName=[
  'المحلات التجارية',
  'المستشفيات والمراكز الصحية',
  'المؤسسات التعليمية',
  'شركات الاتصالات',
  'الفنادق',
    "الهيئات الخيرية",
  'أرقام الطوارئ',
  "المهندسين والخدمات الفنية",
    "الممؤسسات الحكومية",
    "أصحاب العمل الحر"
];

  List<String>placesList=['عدن','حضر موت','صنعاء'];
  String selcetPlace='عدن';


  chnagePlace(String newVal,String type){

    selcetPlace=newVal;

       update();
       getPhoneData(type);
       
  }



List<Map<String,dynamic>> phoneDataList=[];

  getPhoneData(String type)async{
 phoneDataList=[];
QuerySnapshot querySnapshot =
      await FirebaseFirestore.instance.collection
        ('phones')
        .where('type',isEqualTo: type)
        .where('country',isEqualTo: selcetPlace)
        .get();
      try{
        List<Map<String, dynamic>> data
        = querySnapshot.docs.map((DocumentSnapshot doc) =>
        doc.data() as Map<String, dynamic>).toList();
  phoneDataList=data;
      }catch(e){
        // ignore: avoid_print
        print("E.......");
        // ignore: avoid_print
        print(e);
       // orderState='error';
        // ignore: avoid_print
        print("E.......");
      }
      update();
  }

 


}