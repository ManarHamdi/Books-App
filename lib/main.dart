import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/splash/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( BooklyApp());
}

class BooklyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(backgroundColor: kPrimaryColor),
      home:SplashView() ,
    );
  }

}