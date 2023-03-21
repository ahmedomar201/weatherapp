

import 'package:weather_app/data/datasource/remote_datasource.dart';
import 'package:weather_app/domain/entities/weather.dart';
import 'package:weather_app/domain/reopository/weather_repository.dart';

class WeatherRepositoryData implements WeatherRepository{

  final RemoteDataSource remoteDataSource;
  WeatherRepositoryData(this.remoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String countryName) async{

    return (await remoteDataSource.getWeatherByCountryName(countryName))!;
  }


}