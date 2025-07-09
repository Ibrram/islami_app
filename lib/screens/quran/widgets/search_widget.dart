import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(32, 32, 32, 0.7),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xFFE2BE7F),
        ),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 15,
        children: [
          Image.asset('assets/images/quran.png'),
          const Expanded(
            child: TextField(
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: 'Janna',
                fontSize: 16,
                color: Color(0xFFFEFFE8),
              ),
              decoration: InputDecoration(
                hintText: 'Sura Name',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Janna',
                  fontSize: 16,
                  color: Color(0xFFFEFFE8),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
