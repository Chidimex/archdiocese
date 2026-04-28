import 'dart:convert';
import 'package:http/http.dart' as http;

/// Service class to fetch liturgical colours from CalAPI
class LiturgicalApi {
  /// Fetch liturgical colour and season for a given date
  /// If no date is provided, defaults to today
  static Future<Map<String, String>> fetchLiturgicalColour({DateTime? date}) async {
    date ??= DateTime.now();
    final formattedDate = "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
    final url = Uri.parse('http://calapi.inadiutorium.cz/api/v0/en/$formattedDate');

    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final colour = (data['liturgical_color'] ?? ["UNKNOWN"]).first.toString();
        final season = data['season'] ?? "Unknown";
        return {'colour': colour, 'season': season};
      } else {
        throw Exception('Failed to fetch data: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching liturgical colour: $e');
    }
  }
}