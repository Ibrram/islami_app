import 'package:flutter/material.dart';

class Seb7aScreen extends StatefulWidget {
  const Seb7aScreen({super.key});

  @override
  State<Seb7aScreen> createState() => _Seb7aScreenState();
}

class _Seb7aScreenState extends State<Seb7aScreen> {
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
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/images/seb7a_body.png'),
                Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.150,
                  child: const Column(
                    children: [
                      Text(
                        'سبحان الله',
                        style: TextStyle(
                          fontFamily: 'Janna',
                          fontWeight: FontWeight.w700,
                          fontSize: 36,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '30',
                        style: TextStyle(
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
          ],
        ),
      ),
    );
  }
}
