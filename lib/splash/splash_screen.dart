
import 'package:coffe_app/dive_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const routeName = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _navigateRoute() async {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.popAndPushNamed(context, DiveScreen.routeName);
    });
  }

  @override
  void initState() {
    super.initState();
    _navigateRoute();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFece0d1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Container(
            color: Colors.brown,
            height: 300.0,
            width: 300.0,
  foregroundDecoration: const BoxDecoration(
    image: DecorationImage(
        image: AssetImage('assets/images/coffe.jpeg'),
        fit: BoxFit.fill),
  ),)

        ]),
      ),
    );
  }
}
