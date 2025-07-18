import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app_task/helpers/custom_material_navigator.dart';
import 'package:islami_app_task/screens/view_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    timerToNavigator(context);
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/splash/background.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          right: MediaQuery.of(context).size.width * 0.030,
          child: Image.asset(
            'assets/images/splash/glow.png',
            width: 88,
            height: 313,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: MediaQuery.of(context).size.height * 0.061,
          child: Image.asset(
            'assets/images/splash/mosque.png',
            width: 291,
            height: 157,
          ),
        ),
        Positioned(
          left: 0,
          top: MediaQuery.of(context).size.height * 0.229,
          child: Image.asset(
            'assets/images/splash/left_shape.png',
            width: 87,
            height: 187,
          ),
        ),
        Positioned.fill(
          child: Image.asset(
            'assets/images/splash/centerd_logo.png',
          ),
        ),
        Positioned(
          right: 0,
          bottom: MediaQuery.of(context).size.height * 0.120,
          child: Image.asset(
            'assets/images/splash/right_shape.png',
            width: 87,
            height: 187,
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.034,
          right: 0,
          left: 0,
          child: Column(
            children: [
              Image.asset(
                'assets/images/route_logo.png',
              ),
              const Text(
                'Supervised by Mohamed Nabil',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFFDAB98D),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void timerToNavigator(context) {
    Timer.periodic(
      const Duration(seconds: 2),
      (timer) {
        Navigator.pushReplacement(
          context,
          CustomMaterialNavigator(
            builder: (context) => const ViewController(),
          ),
        );
      },
    );
  }
}
