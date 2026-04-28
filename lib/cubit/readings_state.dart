import 'package:flutter/material.dart';

class ReadingsState {
  final bool loading;
  final Map<String, dynamic>? data;
  final String? error;
  final Color liturgicalColor;

  ReadingsState({
    this.loading = false,
    this.data,
    this.error,
    this.liturgicalColor = Colors.green,
  });

  ReadingsState copyWith({
    bool? loading,
    Map<String, dynamic>? data,
    String? error,
    Color? liturgicalColor,
  }) {
    return ReadingsState(
      loading: loading ?? this.loading,
      data: data ?? this.data,
      error: error,
      liturgicalColor: liturgicalColor ?? this.liturgicalColor,
    );
  }
}