 import 'package:boishaki_mart/app/extensions/localization_extension.dart';
import 'package:boishaki_mart/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

import '../../../shared/presentation/widgets/language_change_switch.dart';

class SplashScreen extends StatefulWidget {
   const SplashScreen({super.key});
 
   @override
   State<SplashScreen> createState() => _SplashScreenState();
 }
 
 class _SplashScreenState extends State<SplashScreen> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Center(
         child: Column(
           mainAxisSize: .min,
           children: [
             Text(context.localization.hello),
             LanguageChangeSwitch()
           ],
         ),
       )
     );
   }
 }
 