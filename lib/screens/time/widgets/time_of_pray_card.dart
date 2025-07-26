import 'package:flutter/material.dart';

class TimeOfPrayCard extends StatelessWidget {
  const TimeOfPrayCard({
    super.key,
    // required this.typeOfPray,
    // required this.time,
    // required this.typeOfTime,
  });
  // final String typeOfPray, time, typeOfTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: 200,
      height: 128,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(32, 32, 32, 1),
            Color.fromRGBO(177, 151, 104, 1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'ASR',
              style: TextStyle(
                fontFamily: 'Janna',
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              '04:38',
              style: TextStyle(
                fontFamily: 'Janna',
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'PM',
              style: TextStyle(
                fontFamily: 'Janna',
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
