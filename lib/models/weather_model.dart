class WeatherModel {
  final String imgUrl;
  final DateTime date;
  final double maxTemp;
  final double minTemp;

  WeatherModel({
    required this.imgUrl,
    required this.date,
    required this.maxTemp,
    required this.minTemp,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    print(json['day']['condition']['icon']);
    return WeatherModel(
      imgUrl:'https:${json['day']['condition']['icon']}' ,
      date: DateTime.parse(json['date']),
      maxTemp: json['day']['maxtemp_c'].toDouble(),
      minTemp: json['day']['mintemp_c'].toDouble(),
    );
  }
}
