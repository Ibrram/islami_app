import 'package:flutter/material.dart';
import 'package:islami_app_task/screens/quran/widgets/custom_container.dart';
import 'package:islami_app_task/screens/quran/widgets/most_recent_list.dart';
import 'package:islami_app_task/screens/quran/widgets/search_widget.dart';
import 'package:islami_app_task/screens/quran/widgets/suras_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomContainer(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('assets/images/mosque_islami_logo.png'),
                const SearchWidget(),
                const MostRecentList(),
                const SurasList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
