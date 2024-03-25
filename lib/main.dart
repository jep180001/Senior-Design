import 'package:flutter/material.dart';
import 'welcomepage.dart';
//any packages you want to use, make sure to put it in the pubspec.yaml under dependencies
//also make sure to run flutter pub get to get the packages
void main() {
  runApp(MyApp());
}
//will contain all our webpages and where to navigate to
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //gets rid of the banner
      debugShowCheckedModeBanner: false,
      //the automatic page you'll see will be the welcome page
      initialRoute: '/welcome',
      //all webpages will be added here
      routes: {
        '/welcome': (context) => WelcomePage(),
      },
    );
  }
}
