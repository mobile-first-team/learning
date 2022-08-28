main() {
  exampleFunction(parameterOne: 1);
  exampleFunction(parameterOne: 1, parameterTwo: 2);
}

String exampleFunction({ required int parameterOne, int? parameterTwo = 2 }) {
    return "${parameterOne} and ${parameterTwo}";
}

class SomeClass {
    // Публичные свойства

    final int intValue;
    String? stringValue;
    late final bool lazyValue;

    // Приватные свойства
    final int _somePrivateValue = 1;

    // Инцицализатор
    SomeClass({ 
      required int intValue, // если мы указываем переменную, как required, то обязаны ее проинициализировать (ниже через ":" указано, как это сделать)
      this.stringValue, // короткая запись верхней строки (аналог required String stringValue = null , stringValue = stringValue )
      required bool lazyValue,
    }) : intValue = intValue
    {
      // Блок кода, который будет вызван после инициализации
      this.lazyValue = lazyValue; // если переменная помечена, как lazy, ее можно иницализировать в конце, если убрать late, то компилятор будет ругаться, что переменная не инициализирована
    }

    // Публичные методы
    void somePublicFunction() {

    }

    // Приватные методы
    void _somePrivateFunction() {

    }
}

