import 'dart:convert';

import 'package:http/http.dart' as http;

class ReadingsApi{
  static Future<Map<String, dynamic>> fetchReadings(DateTime date) async{
    final month = date.month.toString().padLeft(2,'0'); 
    final day = date.day.toString().padLeft(2, '0');
    final url = 'https://cpbjr.github.io/catholic-readings-api/readings/${date.year}/$month-$day.json';
    try{
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        return {'error': 'No readings found for this day.'};
      }

    } catch (e) {
      return {'error': 'Failed to fetch readings.'};
    }
  }
}