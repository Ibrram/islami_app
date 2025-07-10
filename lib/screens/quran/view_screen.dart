import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_task/models/sura_model.dart';

class ViewScreen extends StatefulWidget {
  final SuraModel sura;
  final String fileId;

  const ViewScreen({
    super.key,
    required this.sura,
    required this.fileId,
  });

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  @override
  void initState() {
    super.initState();
    readContent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF202020),
        foregroundColor: const Color(0xFFE2BE7F),
        scrolledUnderElevation: 0.0,
        title: Text(
          widget.sura.enName,
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
                    top: MediaQuery.of(context).size.height * 0.008,
                  ),
                  child: Text(
                    widget.sura.arName,
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
              child: ListView.separated(
                physics: const ClampingScrollPhysics(),
                itemCount: lines.length,
                itemBuilder: (context, index) {
                  return Text(
                    '[${index + 1}] ${lines[index]}',
                    style: const TextStyle(
                      color: Color(0xFFE2BE7F),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Janna',
                    ),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                  );
                },
                separatorBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 15),
                  );
                },
              ),
            ),
            const Spacer(),
            Image.asset('assets/images/bottom_mask.png'),
          ],
        ),
      ),
    );
  }

  List<String> lines = [];
  Future<void> readContent() async {
    String fileContent =
        await rootBundle.loadString('assets/suars/${widget.fileId}.txt');
    setState(() {
      lines = fileContent.trim().split('\n');
    });
  }
}
