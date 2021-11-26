import 'package:flutter/material.dart';
import 'package:smart_car_parking/theme.dart';
import 'Screens/Login/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, theme: theme(), home: Login());
  }
}

//  MainTab()