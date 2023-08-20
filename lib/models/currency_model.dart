class CurrencyModel {
  final String baseCode;
  final double rate;

  CurrencyModel({
    required this.baseCode,
    required this.rate,
  });

  factory CurrencyModel.fromJson(Map<String, dynamic> json) {
    return CurrencyModel(
      baseCode: json['base_code'],
      rate: json['rates']['UZS'],
    );
  }
}
