

import 'package:weather_app/domain/entities/weather.dart';
import 'package:weather_app/domain/reopository/weather_repository.dart';

class GetWeatherByCountryName{

  final WeatherRepository repository;

  GetWeatherByCountryName(this.repository);

  Future<Weather> execute(String cityName)async{
    return await repository.getWeatherByCityName(cityName);


  }
}