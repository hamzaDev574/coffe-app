import 'package:coffe_app/cart_screen.dart';
import 'package:coffe_app/choice_screen.dart';
import 'package:coffe_app/coffe_app.dart';
import 'package:coffe_app/dissmisible.dart';
import 'package:coffe_app/dive_screen.dart';
import 'package:coffe_app/profile/profile_screen.dart';
import 'package:coffe_app/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      // theme: ThemeData(
      //   textTheme: TextTheme(headline6: TextStyle(color: Colors.green, fontSize: 25.0)),
        
        
      // ),
    
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
         DiveScreen.routeName :(context) => const DiveScreen(),
        Coffeapp.routename: (context) => const Coffeapp(),
        ProfileScreen.routeName: (context) => ProfileScreen(),
        ChoiceScreen.routeName:(context) =>const ChoiceScreen(),
        CartScreen.routeName:(context)=>const CartScreen(),
       
      },
      // home: CartScreen(),
    );
  }
}
