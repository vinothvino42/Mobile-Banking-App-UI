import 'package:flutter/material.dart';
import 'package:mobile_banking_neomorphism_app/screens/analytics_screen.dart';
import 'package:mobile_banking_neomorphism_app/screens/my_cards_screen.dart';
import 'package:mobile_banking_neomorphism_app/theme/style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Banking',
      theme: appTheme(),
      home: AnalyticsScreen(),
    );
  }
}
