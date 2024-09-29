part of 'question_answer_cubit.dart';

sealed class StateApi extends Equatable {
  const StateApi();
}

class StateLoading extends StateApi {
  @override
  List<Object> get props => [];
}

class StateEmpty extends StateApi {
  @override
  List<Object> get props => [];
}

class StateSuccess extends StateApi {
  final List<Map<String, dynamic>> success;

  const StateSuccess({required this.success});

  @override
  List<Object> get props => [success];
}
