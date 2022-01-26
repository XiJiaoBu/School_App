import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:schoolapp/page/HomePage/WeatherWidget/models.dart';

class WeatherApiClient {
  Future<Weather>? getCurrentWeather() async {
    Weather weather;
    String city = "markham";
    String apiKey = "44d0e7442ee36eeb01c1b9e9e88e1f49";
    var endpoint = Uri.parse(
    "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric");

    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(Weather.fromJson(body).low);
    return Weather.fromJson(body);
  }
}