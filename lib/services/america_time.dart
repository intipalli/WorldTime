import 'package:http/http.dart'; // Ensure you have this import
import 'dart:convert'; // Ensure you have this import
import 'package:intl/intl.dart'; // Ensure you have this import

class AmericaTime {
  String location; // Location name for UI
  String url; // Location URL for API endpoint
  String? time; // The time in that location

  AmericaTime({required this.location, required this.url});

  Future<void> getTime() async {
    try {
      // Make the request
      Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      print(data);

      // Get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'];

      // Parse datetime and offset
      DateTime now = DateTime.parse(datetime);
      String offsetSign = offset.substring(0, 1);
      int offsetHours = int.parse(offset.substring(1, 3));
      int offsetMinutes = int.parse(offset.substring(4, 6));

      // Apply offset
      if (offsetSign == '+') {
        now = now.add(Duration(hours: offsetHours, minutes: offsetMinutes));
      } else {
        now = now.subtract(Duration(hours: offsetHours, minutes: offsetMinutes));
      }

      // Set the time property
      time = DateFormat.jm().format(now);
    } catch (e) {
      print(e);
      time = 'Time fetch failed';
    }
  }
}
