
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DarkController extends GetxController{


  bool themeStatus=false;


  changeThemeStatus(bool value){
    themeStatus=value;
    final box=GetStorage();
    box.write('theme',value);
    update();
  }

  getCurrentThemeStatus(){
    final box=GetStorage();
    bool theme=box.read('theme')??false;
    if(theme==false){
      themeStatus=false;
    }else{
      themeStatus=true;
    }
    print("Theme...."+theme.toString());
    update();
  }


}