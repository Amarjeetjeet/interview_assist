import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_assist/question_answer/cubit/question_answer_cubit.dart';

import '../../widgets/question_answer_list.dart';

class QuestionAnswerScreen extends StatelessWidget {
  const QuestionAnswerScreen({
    super.key,
    required this.languageId,
  });

  final int languageId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuestionAnswerCubit()..getQuestionList(languageId),
      child: BlocBuilder<QuestionAnswerCubit, StateApi>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Question Answer"),
            ),
            body: switch (state) {
              StateEmpty() => const Center(
                  child: Text(
                    "No Questions Found!",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              StateLoading() => const Center(
                  child: CircularProgressIndicator(),
                ),
              StateSuccess() => QuestionAnswerList(
                  questions: state.success,
                  languageId: languageId,
                ),
            },
          );
        },
      ),
    );
  }
}
