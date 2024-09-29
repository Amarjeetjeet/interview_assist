import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/performance_report_helper.dart';
import '../../question_answer/cubit/question_answer_cubit.dart';

class PerformanceReportCubit extends Cubit<StateApi> {
  PerformanceReportCubit() : super(StateLoading());
  PerformanceReportHelper performanceReportHelper = PerformanceReportHelper();

  Future<void> getPerformanceReport() async {
    emit(StateLoading());
    List<Map<String, dynamic>> reportList =
        await performanceReportHelper.getPerformanceReport();

    if (reportList.isEmpty) {
      emit(StateEmpty());
      return;
    }

    emit(StateSuccess(success: reportList));
  }
}
