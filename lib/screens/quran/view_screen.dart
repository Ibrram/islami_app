import 'package:flutter/material.dart';
import 'package:islami_app_task/models/sura_model.dart';

class ViewScreen extends StatelessWidget {
  final SuraModel sura;

  const ViewScreen({
    super.key,
    required this.sura,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF202020),
        foregroundColor: const Color(0xFFE2BE7F),
        title: Text(
          sura.enName,
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
            horizontal: MediaQuery.of(context).size.width * 0.041),
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
                    top: MediaQuery.of(context).size.height * 0.008,
                  ),
                  child: Text(
                    sura.arName,
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
            const SingleChildScrollView(
              child: Text('test'),
            ),
            const Spacer(),
            Image.asset('assets/images/bottom_mask.png'),
          ],
        ),
      ),
    );
  }
}
