import 'package:boishaki_mart/app/controller/language_controller.dart';
import 'package:boishaki_mart/l10n/app_localizations.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import '../features/auth/presentation/screens/splash_screen.dart';

class eStore extends StatefulWidget {
  const eStore({super.key});

  static final LanguageController languageController = LanguageController();

  @override
  State<eStore> createState() => _eStoreState();
}

class _eStoreState extends State<eStore> {
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer = FirebaseAnalyticsObserver(analytics: analytics);



  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: eStore.languageController,
      builder: (languageController) {  // local instance
        return MaterialApp(
          navigatorObservers: <NavigatorObserver>[observer],
          debugShowCheckedModeBanner: true,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: languageController.supportedLocals,
          locale: languageController.currentLocal,
          home: SplashScreen(),
        );
      }
    );
  }
}
