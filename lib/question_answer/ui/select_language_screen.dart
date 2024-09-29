import 'package:flutter/material.dart';
import 'package:interview_assist/mcq/ui/mcq_screen.dart';
import 'package:interview_assist/question_answer/ui/question_answer_screen.dart';

import '../../widgets/my_catelog_card.dart';

class SelectLanguageScreen extends StatefulWidget {
  const SelectLanguageScreen({
    super.key,
    this.isFromMcq = false,
  });

  final bool isFromMcq;

  @override
  State<SelectLanguageScreen> createState() => _SelectLanguageScreenState();
}

class _SelectLanguageScreenState extends State<SelectLanguageScreen> {
  List<String> items = [
    "C/C++",
    "JAVA",
    "PYTHON",
    "ANDROID",
    "JAVA SCRIPT",
    "MY SQL"
  ];

  List<String> icons = [
    "assets/question/c.png",
    "assets/question/java.png",
    "assets/question/python.png",
    "assets/question/android.png",
    "assets/question/javascript.png",
    "assets/question/mysql.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Language"),
      ),
      body: MyCatalogueCard(
        items: items,
        icons: icons,
        onTap: (languageId) {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => widget.isFromMcq
                  ? McqScreen(
                languageId: languageId,
                languageName: items[languageId],
              )
                  : QuestionAnswerScreen(
                      languageId: languageId,
                    ),
            ),
          );
        },
      ),
    );
  }
}
