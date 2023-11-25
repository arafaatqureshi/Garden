import 'package:faisal_urraan/Views/guide/guide1.dart';
import 'package:faisal_urraan/themeConstants.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final gradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [kPrimarylight, kPrimaryAppColor], // You can customize the colors here
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: gradient, // Apply the gradient to the background
        ),
        child: Center(
          child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Guide()),
                );
              },
              child: Image(image: AssetImage('images/logo.png'),)),
        ),
      ),
    );
  }
}
