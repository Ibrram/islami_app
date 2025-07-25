import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_task/helpers/custom_material_navigator.dart';
import 'package:islami_app_task/screens/ahadith/view_screen.dart';
import 'package:islami_app_task/screens/ahadith/widgets/hadith_card_widget.dart';

class AhadithScreen extends StatefulWidget {
  const AhadithScreen({super.key});

  @override
  State<AhadithScreen> createState() => _AhadithScreenState();
}

class _AhadithScreenState extends State<AhadithScreen> {
  @override
  void initState() {
    super.initState();
    getHadith();
  }

  // readed date from ahadith files
  var name = '';
  var content = '';
  var hadithFileId = '1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/ahadith_background.png'),
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.032,
              ),
              child: Image.asset('assets/images/mosque_islami_logo.png'),
            ),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.663,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                onPageChanged: (index, reason) {
                  getHadith(fileId: index + 1);
                  hadithFileId = '${index + 1}';
                },
              ),
              itemCount: 50,
              itemBuilder: (
                BuildContext context,
                int itemIndex,
                int pageViewIndex,
              ) =>
                  HadithCardWidget(
                hadithNumber: name,
                hadithContent: content,
                callBackFunction: navigateToViewScreenOnClick,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> getHadith({int fileId = 1}) async {
    String hadith = await rootBundle.loadString('assets/ahadith/h$fileId.txt');
    String hadithName = hadith.split('\n')[0];
    String hadithContent = hadith.replaceFirst(hadithName, '');

    setState(() {
      name = hadithName;
      content = hadithContent;
    });
  }

  void navigateToViewScreenOnClick() {
    Navigator.push(
      context,
      CustomMaterialNavigator(
        builder: (context) => ViewScreen(
          name: name,
          content: content,
          numberOfFile: hadithFileId,
        ),
      ),
    );
  }
}
