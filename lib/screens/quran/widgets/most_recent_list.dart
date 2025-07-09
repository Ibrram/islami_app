import 'package:flutter/material.dart';
import 'package:islami_app_task/models/most_recent_model.dart';

class MostRecentList extends StatelessWidget {
  const MostRecentList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 21, bottom: 10, top: 20),
          child: Text(
            'Most Recently',
            style: TextStyle(
              color: Color(0xFFFEFFE8),
              fontFamily: 'Janna',
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.160,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemCount: MostRecentModel.listOfRecents.length,
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.658,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFE2BE7F),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        spacing: 8,
                        children: [
                          Text(
                            MostRecentModel.listOfRecents[index].enName,
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF202020),
                              fontSize: 24,
                              fontFamily: 'Janna',
                            ),
                          ),
                          Text(
                            MostRecentModel.listOfRecents[index].arName,
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF202020),
                              fontSize: 24,
                              fontFamily: 'Janna',
                            ),
                          ),
                          Text(
                            '${MostRecentModel.listOfRecents[index].verses} Verses',
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF202020),
                              fontSize: 14,
                              fontFamily: 'Janna',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Image.asset('assets/images/most_recent_image.png'),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(width: 10);
            },
          ),
        ),
      ],
    );
  }
}
