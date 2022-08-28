import 'currency_service.dart';

class ServiceLocator {
  static ServiceLocator shared = ServiceLocator();
  late CurrencyService currencyService;

  ServiceLocator() {
    currencyService = CurrencyService();
  }
}