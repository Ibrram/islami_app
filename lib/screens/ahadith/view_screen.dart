import 'package:flutter/material.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({
    super.key,
    required this.name,
    required this.content,
    required this.numberOfFile,
  });
  final String name, content, numberOfFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF202020),
        foregroundColor: const Color(0xFFE2BE7F),
        scrolledUnderElevation: 0.0,
        title: Text(
          'Hadith $numberOfFile',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            fontFamily: 'Janna',
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.041,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/left_mask.png'),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.018,
                  ),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontFamily: 'Janna',
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Color(0xFFE2BE7F),
                    ),
                  ),
                ),
                Image.asset('assets/images/right_mask.png'),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.660,
              child: SingleChildScrollView(
                child: Text(
                  content,
                  style: const TextStyle(
                    color: Color(0xFFE2BE7F),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Janna',
                    // height: 3,
                  ),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const Spacer(),
            Image.asset('assets/images/bottom_mask.png'),
          ],
        ),
      ),
    );
  }
}
