import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../api/readings_api.dart';
import 'readings_state.dart';

class ReadingsCubit extends Cubit<ReadingsState> {
  ReadingsCubit() : super(ReadingsState());

  Future<void> fetchReadings(DateTime date) async {
    emit(state.copyWith(loading: true, error: null));

    final data = await ReadingsApi.fetchReadings(date);

    if (data.containsKey('error')) {
      emit(state.copyWith(
        loading: false,
        error: data['error'],
      ));
      return;
    }

    final season = data['season'];

    emit(state.copyWith(
      loading: false,
      data: data,
      liturgicalColor: _getLiturgicalColor(season),
    ));
  }

  Color _getLiturgicalColor(String? season) {
    switch (season) {
      case "Advent":
      case "Lent":
        return Colors.purple;

      case "Christmas":
      case "Easter":
        return Colors.white;

      case "Ordinary Time":
        return Colors.green;

      default:
        return Colors.green;
    }
  }
}