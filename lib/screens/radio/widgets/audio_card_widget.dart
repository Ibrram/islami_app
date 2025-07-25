import 'package:flutter/material.dart';

class AudioCardWidget extends StatefulWidget {
  const AudioCardWidget({super.key, required this.shaikhName});

  final String shaikhName;

  @override
  State<AudioCardWidget> createState() => _AudioCardWidgetState();
}

class _AudioCardWidgetState extends State<AudioCardWidget> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 0.142,
      margin: EdgeInsets.only(top: screenSize.height * 0.0193),
      decoration: BoxDecoration(
        color: const Color(0xFFE2BE7F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                widget.shaikhName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Janna',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Color(0xFF202020),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Image.asset(
              'assets/images/bottom_mask_black_white.png',
              width: screenSize.width * 0.906,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: screenSize.height * 0.013,
            child: const Row(
              spacing: 7,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.play_arrow_rounded,
                  size: 44,
                  color: Color(0xFF202020),
                ),
                Icon(Icons.volume_up, size: 30, color: Color(0xFF202020)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
