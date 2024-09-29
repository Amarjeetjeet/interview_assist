import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../widgets/my_radio_button.dart';
import '../data/performance_report_helper.dart';

class McqUi extends StatefulWidget {
  const McqUi({
    super.key,
    required this.questionsList,
    required this.appTitle,
    this.languageName = "",
    this.showSubmitButton = true,
  });

  final List<Map<String, dynamic>> questionsList;
  final String appTitle, languageName;
  final bool showSubmitButton;

  @override
  State<McqUi> createState() => _MCQScreenState();
}

class _MCQScreenState extends State<McqUi> {
  // To store selected answers
  Map<int, String?> selectedAnswers = {};

  // Function to calculate score
  int calculateScore() {
    int score = 0;
    selectedAnswers.forEach((index, answer) {
      if (answer == widget.questionsList[index]["answer"]) {
        score++;
      }
    });
    return score;
  }

  @override
  Widget build(BuildContext context) {
    int score = calculateScore(); // Calculate score
    int totalQuestions = widget.questionsList.length;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${widget.appTitle}-${widget.languageName}: $score/$totalQuestions",
        ), // Display score in AppBar
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(widget.questionsList.length, (index) {
                return Card(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            widget.questionsList[index]["question"],
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: MyRadioButton(
                          aptitudeQuestions: widget.questionsList[index],
                          selectedAnswer: selectedAnswers[index],
                          // Pass the selected answer
                          onAnswerSelected: (answer) {
                            setState(() {
                              selectedAnswers[index] = answer;
                            });
                          },
                        ),
                      ),
                      ExplanationButton(
                        index: index,
                        aptitudeQuestions: widget.questionsList,
                      ),
                    ],
                  ),
                );
              }),
              Visibility(
                visible: widget.showSubmitButton,
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      onPressed: () {
                        DateTime now = DateTime.now();
                        String formattedDate =
                            DateFormat('dd/MM/yy hh:mm a').format(now);

                        PerformanceReportHelper per = PerformanceReportHelper();
                        per.saveReport(
                          mcqName: widget.languageName,
                          score: "$score/$totalQuestions",
                          date: formattedDate,
                        );
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
