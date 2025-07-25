import 'package:flutter/material.dart';
import 'package:islami_app_task/screens/radio/constants/radio_data_contant.dart';
import 'package:islami_app_task/screens/radio/widgets/audio_card_widget.dart';
import 'package:islami_app_task/screens/radio/widgets/reciters_data_constant.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({super.key});

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/radio_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/mosque_islami_logo.png'),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(32, 32, 32, 0.7),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TabBar(
                    indicatorColor: Colors.transparent,
                    dividerColor: Colors.transparent,
                    labelColor: const Color(0xFF202020),
                    unselectedLabelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFFE2BE7F),
                    ),
                    tabs: const [
                      Tab(text: 'Radio'),
                      Tab(text: 'Reciters'),
                    ],
                  ),
                ),

                Expanded(
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ListView.builder(
                        itemCount: RadioDataContant.radioChannels.length,
                        itemBuilder: (context, index) {
                          return AudioCardWidget(
                            shaikhName:
                                RadioDataContant.radioChannels[index].name,
                          );
                        },
                      ),
                      ListView.builder(
                        itemCount: RecitersDataConstant.reciters.length,
                        itemBuilder: (context, index) {
                          return AudioCardWidget(
                            shaikhName:
                                RecitersDataConstant.reciters[index].name,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
