import 'package:flutter_bloc/flutter_bloc.dart';
import '../api/saints_api.dart';
import 'saint_today_state.dart';

class SaintTodayCubit extends Cubit<SaintTodayState> {
  final SaintsApi api;

  SaintTodayCubit(this.api) : super(SaintTodayInitial());

  void getSaintToday() async {
    try {
      emit(SaintTodayLoading());
      final saint = await api.fetchSaintToday();
      emit(SaintTodayLoaded(saint));
    } catch (e) {
      emit(SaintTodayError(e.toString()));
    }
  }
}