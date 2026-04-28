import 'package:flutter_bloc/flutter_bloc.dart';
import '../api/saints_api.dart';
import 'saints_state.dart';

class SaintsCubit extends Cubit<SaintsState> {
  final SaintsApi api;

  SaintsCubit(this.api) : super(SaintsInitial());

  /// Fetch saint(s) for a specific date
  void getSaintByDate(DateTime date) async {
    try {
      emit(SaintsLoading());

      final data = await api.fetchSaintByDate(
        date.year,
        date.month,
        date.day,
      );

      final celebrations = data['celebrations'];

      if (celebrations == null || celebrations.isEmpty) {
        emit(SaintsError("No celebration found"));
      } else {
        emit(SaintsLoaded(celebrations));
      }

    } catch (e) {
      emit(SaintsError(e.toString()));
    }
  }
}