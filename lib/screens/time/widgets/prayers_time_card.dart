import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami_app_task/screens/time/widgets/custom_postion.dart';
import 'package:islami_app_task/screens/time/widgets/time_of_pray_card.dart';

class PrayersTimeCard extends StatelessWidget {
  const PrayersTimeCard({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width,
      height: screenSize.height * 0.322,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset('assets/images/prayer_time_mask.png', fit: BoxFit.cover),
          const CustomPostion(
            isTop: true,
            isLeft: true,
            child: Text(
              '16 Jul,\n2024',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Janna',
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          CustomPostion(
            isTop: true,
            child: Column(
              spacing: screenSize.height * 0.009,
              children: const [
                Text(
                  'Pray Time',
                  style: TextStyle(
                    color: Color.fromRGBO(32, 32, 32, 0.71),
                    fontFamily: 'Janna',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Tuesday',
                  style: TextStyle(
                    color: Color.fromRGBO(32, 32, 32, 0.9),
                    fontFamily: 'Janna',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const CustomPostion(
            isTop: true,
            isRight: true,
            child: Text(
              '09 Muh,\n1446',
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Janna',
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            top: screenSize.height * 0.111,
            child: SizedBox(
              width: screenSize.width - 50,
              height: screenSize.height * 0.146,
              child: CarouselSlider(
                items: const [
                  TimeOfPrayCard(),
                  TimeOfPrayCard(),
                  TimeOfPrayCard(),
                  TimeOfPrayCard(),
                  TimeOfPrayCard(),
                ],
                options: CarouselOptions(
                  viewportFraction: 0.3,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                  enlargeFactor: 0.27,
                ),
              ),
            ),
          ),
          // Positioned.fill(top: 1, child: Text('Next Pray - 02:32')),
        ],
      ),
    );
  }
}
