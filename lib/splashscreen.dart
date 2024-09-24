import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:my_app/onboarding.dart';
import 'package:my_app/register.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goon();
  }

  void goon() {
    Future.delayed(Duration(seconds: 5), () {
      Get.to(
        const OnBoarding(),
      );
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => OnBoarding()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
          child: Text(
        'Splash Screen',
        style: TextStyle(fontSize: 28, color: Colors.white),
      )),
    );
  }
}
