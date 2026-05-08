import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

class eStore extends StatefulWidget {
  const eStore({super.key});

  @override
  State<eStore> createState() => _eStoreState();
}

class _eStoreState extends State<eStore> {
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer = FirebaseAnalyticsObserver(analytics: analytics);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: <NavigatorObserver>[observer],
      debugShowCheckedModeBanner: true,
      home: Scaffold(),
    );
  }
}
