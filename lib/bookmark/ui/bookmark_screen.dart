import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_assist/question_answer/cubit/question_answer_cubit.dart';

import '../../widgets/question_answer_list.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bookmark"),
      ),
      body: BlocProvider(
        create: (context) => QuestionAnswerCubit()..getBookmarkList(),
        child: BlocBuilder<QuestionAnswerCubit, StateApi>(
          builder: (context, state) {
            return switch (state) {
              StateLoading() => const Center(
                  child: CircularProgressIndicator(),
                ),
              StateSuccess() => QuestionAnswerList(
                  questions: state.success,
                  languageId: 0,
                  isFromBookmark: true,
                ),
              StateEmpty() => Center(
                  child: Text(
                    "No Questions Bookmark!",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            };
          },
        ),
      ),
    );
  }
}
