

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {


  TextEditingController searchController = TextEditingController();


  List<String>placesList=['عدن','حضر موت','صنعاء'];


  List<Map<String,dynamic>> priceDataList=[];

  List<Map<String,dynamic>> goldDataList=[];

 List<Map<String,dynamic>> gazDataList=[];

  String selcetPlace='عدن';

  chnagePlace(String newVal){
    selcetPlace=newVal;
 
    getPriceDataWithFilter();
    getDataDataWithFilter();
     getGazDataWithFilter();
       update();
  }


bool isLoading=false;

getDataDataWithFilter()async{
isLoading=true;
update();
 goldDataList=[];
QuerySnapshot querySnapshot =
      await FirebaseFirestore.instance.collection
        ('goldData')
        .where('location',isEqualTo: selcetPlace)
        .get();
      try{
        List<Map<String, dynamic>> data
        = querySnapshot.docs.map((DocumentSnapshot doc) =>
        doc.data() as Map<String, dynamic>).toList();
     goldDataList=data;
     
      }catch(e){
        // ignore: avoid_print
        print("E.......");
        // ignore: avoid_print
        print(e);
       // orderState='error';
        // ignore: avoid_print
        print("E.......");
      }
      Future.delayed(const Duration(seconds: 1), () {
        isLoading=false;
        update();
      });

    
  }


 getGazDataWithFilter()async{

 gazDataList=[];
 
QuerySnapshot querySnapshot =
      await FirebaseFirestore.instance.collection
        ('gazData')
        .where('location',isEqualTo: selcetPlace)
        .get();
      try{
        List<Map<String, dynamic>> data
        = querySnapshot.docs.map((DocumentSnapshot doc) =>
        doc.data() as Map<String, dynamic>).toList();
     gazDataList=data;
     
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

  getPriceDataWithFilter()async{

 priceDataList=[];
 
QuerySnapshot querySnapshot =
      await FirebaseFirestore.instance.collection
        ('priceData')
        .where('location',isEqualTo: selcetPlace)
        .get();
      try{
        List<Map<String, dynamic>> data
        = querySnapshot.docs.map((DocumentSnapshot doc) =>
        doc.data() as Map<String, dynamic>).toList();
     priceDataList=data;
     
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



List<Map<String,dynamic>> newsDataList=[];

   getNewsData()async{

 newsDataList=[];
QuerySnapshot querySnapshot =
      await FirebaseFirestore.instance.collection
        ('news').get();
      try{
        List<Map<String, dynamic>> data
        = querySnapshot.docs.map((DocumentSnapshot doc) =>
        doc.data() as Map<String, dynamic>).toList();
   newsDataList=data;
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

  getPriceData()async{

 priceDataList=[];
 
QuerySnapshot querySnapshot =
      await FirebaseFirestore.instance.collection
        ('priceData')  .where('location',isEqualTo: selcetPlace).get();
      try{
        List<Map<String, dynamic>> data
        = querySnapshot.docs.map((DocumentSnapshot doc) =>
        doc.data() as Map<String, dynamic>).toList();
     priceDataList=data;
     
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

  getGoldData()async{
     goldDataList=[];
QuerySnapshot querySnapshot =
      await FirebaseFirestore.instance.collection
        ('goldData')
          .where('location',isEqualTo: selcetPlace)
          .get();
      try{
        List<Map<String, dynamic>> data
        = querySnapshot.docs.map((DocumentSnapshot doc) =>
        doc.data() as Map<String, dynamic>).toList();
     goldDataList=data;
     
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

   getGazData()async{
     gazDataList=[];
QuerySnapshot querySnapshot =
      await FirebaseFirestore.instance.collection
        ('gazData').get();
      try{
        List<Map<String, dynamic>> data
        = querySnapshot.docs.map((DocumentSnapshot doc) =>
        doc.data() as Map<String, dynamic>).toList();
     gazDataList=data;
     
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