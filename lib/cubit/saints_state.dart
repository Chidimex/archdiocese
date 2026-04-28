abstract class SaintsState {}

class SaintsInitial extends SaintsState {}

class SaintsLoading extends SaintsState {}

class SaintsLoaded extends SaintsState {
  final List<dynamic> celebrations;

  SaintsLoaded(this.celebrations);
}

class SaintsError extends SaintsState {
  final String message;

  SaintsError(this.message);
}