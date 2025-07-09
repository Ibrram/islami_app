import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami_app_task/screens/quran/home_screen.dart';
import 'package:islami_app_task/screens/splash_screen.dart';

class ViewController extends StatefulWidget {
  const ViewController({super.key});

  @override
  State<ViewController> createState() => _ViewControllerState();
}

class _ViewControllerState extends State<ViewController> {
  int selectedScreenIndex = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const SplashScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        backgroundColor: const Color(0xFFE2BE7F),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        currentIndex: selectedScreenIndex,
        onTap: (index) {
          setState(() {
            selectedScreenIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(66),
                color: const Color.fromRGBO(32, 32, 32, 0.6),
              ),
              child: SvgPicture.asset(
                'assets/images/bottom_bar_icons/quran.svg',
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                width: 19,
              ),
            ),
            icon: SvgPicture.asset(
              'assets/images/bottom_bar_icons/quran.svg',
              colorFilter:
                  const ColorFilter.mode(Colors.black, BlendMode.srcIn),
              width: 19,
            ),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(66),
                color: const Color.fromRGBO(32, 32, 32, 0.6),
              ),
              child: SvgPicture.asset(
                'assets/images/bottom_bar_icons/hadith.svg',
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                width: 19,
              ),
            ),
            icon: SvgPicture.asset(
              'assets/images/bottom_bar_icons/hadith.svg',
              colorFilter:
                  const ColorFilter.mode(Colors.black, BlendMode.srcIn),
              width: 19,
            ),
            label: 'Hadith',
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(66),
                color: const Color.fromRGBO(32, 32, 32, 0.6),
              ),
              child: SvgPicture.asset(
                'assets/images/bottom_bar_icons/necklace.svg',
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                width: 19,
              ),
            ),
            icon: SvgPicture.asset(
              'assets/images/bottom_bar_icons/necklace.svg',
              colorFilter:
                  const ColorFilter.mode(Colors.black, BlendMode.srcIn),
              width: 19,
            ),
            label: 'Seb7a',
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(66),
                color: const Color.fromRGBO(32, 32, 32, 0.6),
              ),
              child: SvgPicture.asset(
                'assets/images/bottom_bar_icons/radio.svg',
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                width: 19,
              ),
            ),
            icon: SvgPicture.asset(
              'assets/images/bottom_bar_icons/radio.svg',
              colorFilter:
                  const ColorFilter.mode(Colors.black, BlendMode.srcIn),
              width: 19,
            ),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(66),
                color: const Color.fromRGBO(32, 32, 32, 0.6),
              ),
              child: SvgPicture.asset(
                'assets/images/bottom_bar_icons/time.svg',
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                width: 19,
              ),
            ),
            icon: SvgPicture.asset(
              'assets/images/bottom_bar_icons/time.svg',
              colorFilter:
                  const ColorFilter.mode(Colors.black, BlendMode.srcIn),
              width: 19,
            ),
            label: 'Time',
          ),
        ],
      ),
      body: screens[selectedScreenIndex],
    );
  }
}
