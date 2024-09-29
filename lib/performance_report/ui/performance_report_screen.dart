import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_assist/performance_report/cubit/performance_report_cubit.dart';
import 'package:interview_assist/question_answer/cubit/question_answer_cubit.dart';

class PerformanceReportScreen extends StatelessWidget {
  const PerformanceReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Performance Report"),
      ),
      body: BlocProvider(
        create: (context) => PerformanceReportCubit()..getPerformanceReport(),
        child: BlocBuilder<PerformanceReportCubit, StateApi>(
          builder: (context, state) {
            return switch (state) {
              StateEmpty() => const Center(
                  child: Text(
                    "No Report Found!",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              StateLoading() => const Center(
                  child: CircularProgressIndicator(),
                ),
              StateSuccess() => PerformanceReport(reportList: state.success),
            };
          },
        ),
      ),
    );
  }
}

class PerformanceReport extends StatelessWidget {
  const PerformanceReport({
    super.key,
    required this.reportList,
  });

  final List<Map<String, dynamic>> reportList;

  @override
  Widget build(BuildContext context) {
    debugPrint(reportList.toString());
    return Container(
      color: Colors.white,
      height: double.infinity,
      padding: const EdgeInsets.all(16.0),
      child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        border: TableBorder.all(color: Colors.black),
        children: [
          const TableRow(
            children: [
              HeaderText(
                title: "ID",
              ),
              HeaderText(
                title: "MCQ NAME",
              ),
              HeaderText(
                title: "SCORE",
              ),
              HeaderText(
                title: "DATE",
              ),
            ],
          ),
          ...reportList.map((report){
            return TableRow(
              children: [
                RowContent(content: report["id"].toString()),
                RowContent(content: report["mcq_name"]),
                RowContent(content: report["score"]),
                RowContent(content: report["date"]),
              ]
            );
          })
        ],
      ),
    );
  }
}



class RowContent extends StatelessWidget {
  const RowContent({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 4.0,
      ),
      child: Text(
        content,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}


class HeaderText extends StatelessWidget {
  const HeaderText({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 4.0,
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
