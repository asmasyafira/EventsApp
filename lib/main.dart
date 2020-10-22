import 'package:events_app/view/detail.dart';
import 'package:events_app/view/home.dart';
import 'package:events_app/view/profile.dart';
import 'package:events_app/view/setup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SetupScreen.page,
      debugShowCheckedModeBanner: false,
        routes: {
          HomeScreen.page: (context) => HomeScreen(),
          SetupScreen.page : (context) => SetupScreen(),
          ProfileScreen.page : (context) => ProfileScreen()
        },
    );
  }
}


