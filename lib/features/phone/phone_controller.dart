


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class PhoneController extends GetxController{


List<String>phoneImage=[
  'assets/images/home2.png',
  'assets/images/hospital.png',
  'assets/images/learn.png',
  'assets/images/phone2.png',
  'assets/images/hotel.png',
    "assets/images/love.png",
  'assets/images/emer.png',
  "assets/images/eng.png",
    "assets/images/gov.png",
    "assets/images/bag.png"
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

  List<String>placesList=['عدن','حضر موت','صنعاة'];
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