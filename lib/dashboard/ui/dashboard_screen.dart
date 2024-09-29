import 'package:flutter/material.dart';
import 'package:interview_assist/aptitude/ui/aptitude_screen.dart';
import 'package:interview_assist/bookmark/ui/bookmark_screen.dart';
import 'package:interview_assist/coding_challanges/ui/coding_challanges_screen.dart';
import 'package:interview_assist/question_answer/ui/select_language_screen.dart';

import '../../performance_report/ui/performance_report_screen.dart';
import '../../widgets/my_catelog_card.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<String> items = [
    "Question Answer",
    "MCQ",
    "Aptitude",
    "Coding Challenges",
    "Performance Report",
    "Mock Interview",
    "Bookmark",
  ];

  List<String> icons = [
    "assets/dashboard/question-and-answer.png",
    "assets/dashboard/mcq.png",
    "assets/dashboard/aptitude.png",
    "assets/dashboard/coding-test.png",
    "assets/dashboard/performance-report.png",
    "assets/dashboard/mock_interview.png",
    "assets/dashboard/bookmark.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: SafeArea(
        child: MyCatalogueCard(
          items: items,
          icons: icons,
          onTap: (index) {
            if (items[index] == "Question Answer") {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) =>
                      const SelectLanguageScreen(),
                ),
              );
            }
            if (items[index] == "MCQ") {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const SelectLanguageScreen(
                    isFromMcq: true,
                  ),
                ),
              );
            }
            if (items[index] == "Coding Challenges") {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) =>
                      const CodingChallengesScreen(),
                ),
              );
            }
            if (items[index] == "Aptitude") {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const AptitudeScreen(),
                ),
              );
            }
            if (items[index] == "Bookmark") {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const BookmarkScreen(),
                ),
              );
            }
            if (items[index] == "Performance Report") {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const PerformanceReportScreen(),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
