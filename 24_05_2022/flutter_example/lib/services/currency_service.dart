import 'dart:convert';

import 'package:http/http.dart' as http;

class Currency {
  final String exchangeId;
  final String name;

  const Currency({ 
    required this.exchangeId, 
    required this.name 
  });

  factory Currency.fromJson(Map<String, dynamic> json) {
    return Currency(
      exchangeId: json['exchange_id'],
      name: json['name']
    );
  }
}

class CurrencyService {
  final _baseURL = "https://rest.coinapi.io/v1";
  // Должен быть в gitignore, но для примера оставим здесь
  final _apiKey = "0E444DE4-53F7-4833-8AE0-FA80956DC9D4";
  Map<String, String> get _authHeaders => {"X-CoinAPI-Key": _apiKey};
  
  Future<List<Currency>> getAllExchanges() async {
    final url = Uri.parse("$_baseURL/exchanges");
    final response = await http.get(url, headers: _authHeaders);
    final responseJson = jsonDecode(response.body); 
    final List<Currency> result = [];

    // Правильно обработать ошибки и exceptions

    if (responseJson is List<dynamic>) {
      for (final json in responseJson) {
        result.add(Currency.fromJson(json));
      }
    }

    return result;
  }
}

// curl https://rest.coinapi.io/v1/exchangerate/BTC?invert=false \
//   --request GET
//   --header "X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY"