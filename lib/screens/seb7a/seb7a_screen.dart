import 'package:flutter/material.dart';

class Seb7aScreen extends StatefulWidget {
  const Seb7aScreen({super.key});

  @override
  State<Seb7aScreen> createState() => _Seb7aScreenState();
}

class _Seb7aScreenState extends State<Seb7aScreen> {
  List<String> seb7aContent = ['الله اكبر', 'الحمدلله', 'سبحان الله'];
  int seb7aCurrentElement = 0;
  int seb7aCounter = 0;
  double rotationTurn = 5;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/seb7a_background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 16,
          children: [
            Image.asset('assets/images/mosque_islami_logo.png'),
            const Text(
              'سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Janna',
                fontSize: 36,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (seb7aCounter < 33) {
                    seb7aCounter++;
                  } else {
                    seb7aCounter = 0;
                    seb7aCurrentElement = seb7aNextIndex();
                  }
                  rotationTurn += 5;
                });
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AnimatedRotation(
                    turns: rotationTurn / 360,
                    filterQuality: FilterQuality.high,
                    alignment: const Alignment(0, 0.2),
                    duration: Durations.medium1,
                    child: Image.asset(
                      'assets/images/seb7a_body.png',
                      width: MediaQuery.of(context).size.width * 0.66,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.085,
                    child: Column(
                      children: [
                        Text(
                          seb7aContent[seb7aCurrentElement],
                          style: const TextStyle(
                            fontFamily: 'Janna',
                            fontWeight: FontWeight.w700,
                            fontSize: 36,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "$seb7aCounter",
                          style: const TextStyle(
                            fontFamily: 'Janna',
                            fontWeight: FontWeight.w700,
                            fontSize: 36,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  int seb7aNextIndex() {
    return (seb7aCurrentElement + 1) % seb7aContent.length;
  }
}
