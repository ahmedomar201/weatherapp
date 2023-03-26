import 'package:flutter/material.dart';
import 'package:weather_app/data/datasource/remote_datasource.dart';
import 'package:weather_app/data/reopository/weather_repository.dart';
import 'package:weather_app/domain/entities/weather.dart';
import 'package:weather_app/domain/reopository/weather_repository.dart';
import 'package:weather_app/domain/usecases/get_weather_by_country.dart';

void main() async{
  BaseRemoteDataSource baseRemoteDataSource =RemoteDataSource();
  WeatherRepository weatherRepository=WeatherRepositoryData(baseRemoteDataSource);

  Weather weather=await GetWeatherByCountryName(weatherRepository).execute("egypt");
  print(weather);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
    );
  }
}
