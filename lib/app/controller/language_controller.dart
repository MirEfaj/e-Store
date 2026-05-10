import 'dart:ui';
import 'package:get/get.dart';

class LanguageController extends GetxController{
  Locale _currentLocal = Locale('en');

 final List<Locale> _supportedLocals = [ Locale('en'), Locale('bn'), ];

 Locale get currentLocal => _currentLocal;
 List<Locale> get supportedLocals => _supportedLocals ;

 void changeLocal(Locale locale){
   if(_currentLocal == locale){
     return ;
   }

   _currentLocal = locale;
   update();
 }


}