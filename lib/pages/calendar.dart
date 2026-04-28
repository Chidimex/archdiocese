import 'package:archdiocese/apptheme/themecolors.dart';
import 'package:archdiocese/cubit/readings_cubit.dart';
import 'package:archdiocese/cubit/readings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;

    // Fetch initial readings via ReadingsCubit
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ReadingsCubit>().fetchReadings(_focusedDay);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryGreen,
        leading: const BackButton(color: AppColors.liturgicalWhite),
        title: Text(
          'Liturgical Calendar',
          style: GoogleFonts.lora(
            fontWeight: FontWeight.w600,
            color: AppColors.liturgicalWhite,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Calendar
              SizedBox(
                height: 400,
                child: TableCalendar(
                  firstDay: DateTime(2025, 1, 1),
                  lastDay: DateTime(2026, 12, 31),
                  focusedDay: _focusedDay,
                  selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                    });
                    // Fetch readings for selected day
                    context.read<ReadingsCubit>().fetchReadings(selectedDay);
                  },
                  calendarStyle: const CalendarStyle(
                    todayDecoration: BoxDecoration(
                      color: AppColors.liturgicalGreen,
                      shape: BoxShape.circle,
                    ),
                    selectedDecoration: BoxDecoration(
                      color: Colors.deepPurple,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Readings Header
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [AppColors.lightGreen, AppColors.backgroundCream],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Text(
                    "Readings",
                    style: GoogleFonts.lora(
                      color: AppColors.liturgicalWhite,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // BlocBuilder for Readings
              BlocBuilder<ReadingsCubit, ReadingsState>(
                builder: (context, state) {
                  if (state.loading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (state.error != null) {
                    return Text(
                      state.error!,
                      style: const TextStyle(color: Colors.red),
                    );
                  }

                  if (state.data == null) {
                    return const Text('Select a date to see readings.');
                  }

                  final readings = state.data!['readings'];
                  final season = state.data!['season'];

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Liturgical color banner
                      Container(
                        margin: const EdgeInsets.only(bottom: 15),
                        padding: const EdgeInsets.all(12),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: _getLiturgicalColor(season),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Season: $season",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: (season == "Christmas" || season == "Easter")
                                ? Colors.black
                                : AppColors.textPrimary,
                          ),
                        ),
                      ),

                      // Readings
                      if (readings['firstReading'] != null)
                        Text(
                          "First Reading:\n${readings['firstReading']}",
                          style: GoogleFonts.lora(
                              fontSize: 15, fontWeight: FontWeight.w800),
                        ),
                      if (readings['secondReading'] != null)
                        Text(
                          "Second Reading:\n${readings['secondReading']}",
                          style: GoogleFonts.lora(
                              fontSize: 15, fontWeight: FontWeight.w800),
                        ),
                      if (readings['psalm'] != null)
                        Text(
                          "Psalm:\n${readings['psalm']}",
                          style: GoogleFonts.lora(
                              fontSize: 15, fontWeight: FontWeight.w800),
                        ),
                      if (readings['gospel'] != null)
                        Text(
                          "Gospel:\n${readings['gospel']}",
                          style: GoogleFonts.lora(
                              fontSize: 15, fontWeight: FontWeight.w800),
                        ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to return liturgical color based on season
  Color _getLiturgicalColor(String season) {
    switch (season.toLowerCase()) {
      case 'advent':
        return Colors.purple;
      case 'christmas':
        return Colors.white;
      case 'lent':
        return Colors.purple;
      case 'easter':
        return Colors.white;
      case 'ordinary time':
        return Colors.green;
      default:
        return AppColors.backgroundCream;
    }
  }
}