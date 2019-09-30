import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sprint1/src/pages/home_page.dart';
import 'package:sprint1/src/pages/restaurante_page.dart';
 
void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
    .then((_) {
      runApp(MyApp());
    });
  
} 
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' Sprint 1',
      initialRoute: 'homePage',
      routes: {
        'homePage' : (BuildContext context) => HomePage(),
        'restaurantePage' : (BuildContext context) => RestaurantePage(),


      },
      theme: ThemeData(
        //
       
        scaffoldBackgroundColor: Colors.white,
        canvasColor: Colors.transparent
      ),
    );
  }
}