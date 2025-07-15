import 'package:flutter/material.dart';

class HadithCardWidget extends StatelessWidget {
  const HadithCardWidget({
    super.key,
    required this.hadithNumber,
    required this.hadithContent,
  });

  final String hadithNumber;
  final String hadithContent;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFFE2BE7F),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 12,
            left: 8,
            child: Image.asset('assets/images/left_corner.png'),
          ),
          Positioned(
            top: 12,
            right: 8,
            child: Image.asset('assets/images/right_corner.png'),
          ),
          Positioned(
            top: 42,
            left: 0,
            right: 0,
            child: Text(
              hadithNumber,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xFF202020),
                fontFamily: 'Janna',
              ),
            ),
          ),
          Positioned.fill(
            child: Image.asset('assets/images/hadith_card_background.png'),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/hadith_mosque.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 80,
            left: 20,
            right: 20,
            child: Text(
              hadithContent,
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                color: Color(0xFF202020),
                fontSize: 16,
                fontFamily: 'Janna',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
