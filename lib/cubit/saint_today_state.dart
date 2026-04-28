abstract class SaintTodayState {}

class SaintTodayInitial extends SaintTodayState {}

class SaintTodayLoading extends SaintTodayState {}

class SaintTodayLoaded extends SaintTodayState {
  final Map<String, dynamic> saint;

  SaintTodayLoaded(this.saint);
}

class SaintTodayError extends SaintTodayState {
  final String message;

  SaintTodayError(this.message);
}