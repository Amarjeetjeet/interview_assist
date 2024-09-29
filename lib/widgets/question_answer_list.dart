import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../question_answer/cubit/question_answer_cubit.dart';

class QuestionAnswerList extends StatelessWidget {
  const QuestionAnswerList({
    super.key,
    required this.questions,
    required this.languageId,
    this.isFromBookmark = false,
  });

  final int languageId;
  final List<Map<String, dynamic>> questions;
  final bool isFromBookmark;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: questions.length,
      itemBuilder: (ctx, index) {
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${index + 1}. ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        questions[index]["question"],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (isFromBookmark) {
                          context
                              .read<QuestionAnswerCubit>()
                              .addToBookmarkFromBookmarkScreen(
                                  questions[index]["id"]);
                        } else {
                          context
                              .read<QuestionAnswerCubit>()
                              .addToBookmarkFromQuestionScreen(
                                  questions[index]["id"], languageId);
                        }
                      },
                      child: Icon(
                        questions[index]["is_bookmarked"] == 0
                            ? Icons.bookmark_border
                            : Icons.bookmark,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  questions[index]["answer"],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
