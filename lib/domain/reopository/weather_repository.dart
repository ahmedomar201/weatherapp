


import 'package:weather_app/domain/entities/weather.dart';

abstract class WeatherRepository{
// solid dependence inversion عشان اكلم layer التانية
  Future<Weather>getWeatherByCityName(String cityName);


}