import 'package:flutter/material.dart';
import 'package:islami_app_task/helpers/custom_material_navigator.dart';
import 'package:islami_app_task/screens/onboarding/widgets/card_of_image_text.dart';
import 'package:islami_app_task/screens/onboarding/widgets/indcator_widget.dart';
import 'package:islami_app_task/screens/view_controller.dart';

PageController _pageController = PageController();

int _currentPage = 0;

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF202020),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.037,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/images/mosque_islami_logo.png'),
              Expanded(
                child: PageView(
                  onPageChanged: (value) {
                    setState(() {
                      _currentPage = value;
                    });
                  },
                  controller: _pageController,
                  children: const [
                    CardOfImageText(
                      imagePath: 'assets/images/onboarding/welcome.png',
                      textOne: 'Welcome To Islmi App',
                    ),
                    CardOfImageText(
                      imagePath: 'assets/images/onboarding/mosque.png',
                      textOne: 'Welcome To Islami',
                      textTwo:
                          'We Are Very Excited To Have You In Our Community',
                    ),
                    CardOfImageText(
                      imagePath: 'assets/images/onboarding/quran.png',
                      textOne: 'Reading the Quran',
                      textTwo: 'Read, and your Lord is the Most Generous',
                    ),
                    CardOfImageText(
                      imagePath: 'assets/images/onboarding/seb7a.png',
                      textOne: 'Bearish',
                      textTwo: 'Praise the name of your Lord, the Most High',
                    ),
                    CardOfImageText(
                      imagePath: 'assets/images/onboarding/microphone.png',
                      textOne: 'Holy Quran Radio',
                      textTwo:
                          'You can listen to the Holy Quran Radio through the application for free and easily',
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible: _currentPage != 0,
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: TextButton(
                      onPressed: () {
                        if (_currentPage == 0) return;
                        setState(() {
                          _pageController.previousPage(
                            duration: Durations.medium1,
                            curve: Curves.easeIn,
                          );
                        });
                      },
                      child: const Text(
                        'Back',
                        style: TextStyle(
                          color: Color(0xFFE2BE7F),
                          fontFamily: 'Janna',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),

                  IndcatorWidget(activeIndex: _currentPage),

                  TextButton(
                    onPressed: () {
                      if (_currentPage == 4) {
                        Navigator.pushReplacement(
                          context,
                          CustomMaterialNavigator(
                            builder: (context) => const ViewController(),
                          ),
                        );
                        return;
                      }
                      setState(() {
                        _pageController.nextPage(
                          duration: Durations.medium1,
                          curve: Curves.easeIn,
                        );
                      });
                    },
                    child: Text(
                      _currentPage != 4 ? 'Next' : 'Finsh',
                      style: const TextStyle(
                        color: Color(0xFFE2BE7F),
                        fontFamily: 'Janna',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
