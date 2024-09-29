import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/question_database_helper.dart';

part 'state_api.dart';

class QuestionAnswerCubit extends Cubit<StateApi> {
  QuestionAnswerCubit() : super(StateLoading());
  final dbHelper = QuestionAnswerDatabaseHelper();

  Future<void> getQuestionList(int languageId) async {
    emit(StateLoading());
    try {
      List<Map<String, dynamic>> questions =
          await dbHelper.getQuestions(languageId);
      if (questions.isEmpty) {
        emit(StateEmpty());
        return;
      }
      emit(StateSuccess(success: questions));
    } catch (e) {}
  }

  Future<void> addToBookmarkFromQuestionScreen(
    int questionId,
    int languageId,
  ) async {
    await dbHelper.toggleBookmark(questionId);
    await getQuestionList(languageId);
  }

  Future<void> addToBookmarkFromBookmarkScreen(
    int questionId,
  ) async {
    await dbHelper.toggleBookmark(questionId);
    await getBookmarkList();
  }

  Future<void> getBookmarkList() async {
    emit(StateLoading());
    try {
      List<Map<String, dynamic>> questions =
          await dbHelper.getBookmarkedQuestions();
      if (questions.isEmpty) {
        emit(StateEmpty());
        return;
      }
      emit(StateSuccess(success: questions));
    } catch (e) {}
  }
}
