import 'package:flutter/material.dart';
import 'package:islami_app_task/helpers/custom_material_navigator.dart';
import 'package:islami_app_task/models/sura_model.dart';
import 'package:islami_app_task/screens/quran/view_screen.dart';

class SurasList extends StatelessWidget {
  const SurasList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 21, right: 21, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 10,
        children: [
          const Text(
            'Suras List',
            style: TextStyle(
              color: Color(0xFFFEFFE8),
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontFamily: 'Janna',
            ),
          ),
          ListView.separated(
            physics: const ClampingScrollPhysics(),
            itemCount: SuraModel.surasList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              SuraModel current = SuraModel.surasList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CustomMaterialNavigator(
                      builder: (context) => ViewScreen(
                        sura: current,
                        fileId: (index + 1).toString(),
                      ),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset('assets/images/indexing_of_suars.png'),
                        Text(
                          '${index + 1}',
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Janna',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.055),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          current.enName,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            fontFamily: 'Janna',
                          ),
                        ),
                        Text(
                          '${current.ayaNumber} Verses',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            fontFamily: 'Janna',
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      current.arName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Janna',
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.width * 0.023,
                  horizontal: MediaQuery.of(context).size.height * 0.068,
                ),
                decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.white)),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
