# Основы Dart

## Переменные и константы

### Переменные Final

Переменные типа final не могут изменяться после инициализации

**Dart**
```dart
  final String exampleVariable = 'Example';
  final exampleVariable = 'Example'; // Тип будет определен автоматически
```


<details>
  <summary> <b>Swift</b> </summary>
   <br>
  
  ```swift
  let exampleVariable: String = "Example"
  let exampleVariable = "Example"
  ```
  
</details>

<details>
  <summary> <b>Kotlin</b> </summary>
   <br>
  
  ```kotlin
  val exampleVariable: String = "Example"
  val exampleVariable = "Example"
  ```
  
</details>

<details>
  <summary> <b>JS</b> </summary>
   <br>
  
  ```js
  const exampleVariable = "Example"; // Нет полного аналога, но наиболее близкое const
  ```
  
</details>
<br>

### Переменные Const

Переменные типа const, так же как и final не может изменяться после инициализации. Единственное отличие, что const является константой времени компиляции

**Dart**
```dart
const String exampleVariable = 'Example';
const exampleVariable = 'Example'; // Тип будет определен автоматически
```

<details>
  <summary> <b>Swift</b> </summary>
   <br>
  
  ```swift
  let exampleVariable: String = "Example" // Нет полного аналога. В свойствах класса можно ставить static
  let exampleVariable = "Example"
  ```
</details>

<details>
  <summary> <b>Kotlin</b> </summary>
   <br>
  
  ```kotlin
  val exampleVariable: String = "Example" // Нет полного аналога. В свойствах класса можно ставить static
  val exampleVariable = "Example"
  ```
</details>

<details>
  <summary> <b>JS</b> </summary>
   <br>
  
  ```js
  const exampleVariable = "Example"; // Нет полного аналога, но наиболее близкое const
  ```
</details>
<br>

### Переменные Var

Переменные типа var погут менять свое значение после инициализации

**Dart**
```dart
String exampleVariable = 'Example';
var exampleVariable = 'Example'; // Тип будет определен автоматически
``` 

<details>
  <summary> <b>Swift</b> </summary>
   <br>
  
  ```swift
  var exampleVariable: String = "Example" // Нет полного аналога
  var exampleVariable = "Example"
  ``` 
</details>

<details>
  <summary> <b>Kotlin</b> </summary>
   <br>
  
  ```kotlin
  var exampleVariable: String = "Example"
  var exampleVariable = "Example"
  ```
</details>

<details>
  <summary> <b>JS</b> </summary>
   <br>
  
  ```js
  var exampleVariable = "Example";
  val exampleVariable = "Example";
  const exampleVariable = "Example";
  ```
</details>
<br>

## Типы данных

Примитивные данные почти такие же как и во всех языках программирования

* Numbers (int, double)
* Strings (String)
* Booleans (bool)
* Lists (List, also known as arrays)
* Sets (Set)
* Maps (Map)

**Dart**
```dart
// Numberts
final int exampleInt = 1;
final double exampleDouble = 1.0;

// Strings
final String exampleString = "String";

// Booleans
final bool exampleBool = true;

// Lists
final List<int> exampleArray = [1, 2, 3, 4, 5];
List<int> exampleArrayTwo = List<int>.empty();

// Sets
final Set<int> exampleSet = {1, 2, 3, 4};
final Set<int> exampleSetTwo = <int>{1, 2, 3, 4};
Set<int> exampleSetThree = Set<int>();

// Maps
final Map<String, int> exampleMap = {"one": 1, "two": 2};
Map<String, int> exampleMapTwo = Map<String, int>();
```

<details>
  <summary> <b>Swift</b> </summary>
  <br>
  
  ```swift
  // Numberts
  let exampleInt: Int = 1
  let exampleDouble: Double = 1.0

  // Strings
  let exampleString: String = "String"

  // Booleans
  let exampleBool: Bool = true

  // Lists
  let exampleArray: [Int] = [1, 2, 3, 4, 5]
  var exampleArrayTwo: [Int] = [Int]()

  // Sets
  let exampleSet: Set<Int> = [1, 2, 3, 4]
  var exampleSetTwo: Set<Int> = Set<Int>()

  // Maps
  let exampleMap: [String: Int] = ["one": 1, "two": two]
  var exampleMapTwo: [String: Int] = [String: Int]()
  ```
</details>

<details>
  <summary> <b>Kotlin</b> </summary>
  <br>
  
  ```kotlin
  // Numberts
  val exampleInt: Int = 1
  val exampleDouble: Double = 1.0

  // Strings
  val exampleString: String = "String"

  // Booleans
  val exampleBool: Boolean = true

  // Lists
  val exampleArray: List<Int> = listOf(1, 2, 3, 4, 5)
  var exampleArrayTwo: List<Int> = listOf<Int>()

  // Sets
  val exampleSet: Set<Int> = listOf(1, 2, 3, 4)
  var exampleSetTwo: Set<Int> = Set<Int>()

  // Maps
  val exampleMap: Map<String, Int> = mapOf("one" to 1, "two" to two)
  var exampleMapTwo: Map<String, Int> = mapOf<String , Int>()
  ```
</details>

<details>
  <summary> <b>JS</b> </summary>
  <br>
  
  ```js
  // Numberts
  let exampleInt = 1;
  let exampleDouble = 1.0;

  // Strings
  let exampleString = "String";

  // Booleans
  let exampleBool = true;

  // Lists
  let exampleArray = [1, 2, 3, 4, 5];
  let exampleArrayTwo = new Array(1, 2, 3, 4, 5);

  // Sets
  let exampleSet: Set<Int> = new Set([1, 2, 3, 4, 5]);

  // Maps
  let exampleMap = new Map(["one": 1], ["two": 2])
  ```
</details>
<br>

## Функции

Dart объектно-ориентированный язык, поэтому функции в нем тоже являются объектами. Поэтому их можно сохранять в переменный

**Формат объявления функции**
```dart
returnType functionName(parameters) {
    // ...
    return value;
}
```

В Dart можно не указывать возвращаемое значение функции, если это сделать, то возвращаемый тип будет `dynamic`, т.е. любой (аналог Any в Swift) 

**Dart**
```dart
String exampleFunction(int parameterOne, int parameterTwo) {
    return "${parameterOne} and ${parameterTwo}";
}

exampleFunction(1, 2);
```

<details>
  <summary> <b>Swift</b> </summary>

  ```swift
  func exampleFunction(parameterOne: Int, parameterTwo: Int) -> String {
      return "\(parameterOne) and \(parameterTwo)"
  }

  exampleFuntion(parameterOne: 1, parameterTwo: 2)
  ```
  <br>
  
</details>

<details>
  <summary> <b>Kotlin</b> </summary>

  ```kotlin
  fun exampleFunction(parameterOne: Int, parameterTwo: Int): String {
      return "${parameterOne} and ${parameterTwo}"
  }

  exampleFuntion(parameterOne = 1, parameterTwo = 2)
  ```
  <br>
  
</details>

<details>
  <summary> <b>JS</b> </summary>

  ```js
  function exampleFunction(parameterOne, parameterTwo) {
    return `${parameterOne} and ${parameterTwo}`;
  }

  exampleFunction(1, 2)
  ```
  <br>
  
</details>
<br>

Так же можно создавать функции с именованныеми параметрами в Dart. Ключевое слово `required` указывает обязателен параметр или нет. Именованные параметры можно передавать в любом порядке. Можно перемешивать именованные и неименованные параметры. Можно передавать опциональные параметры, для этого в конце типа нужно указать `?`. Так же через `=` можно указать параметр по умолчанию

**Dart**
```dart
String exampleFunction({ required int parameterOne, int? parameterTwo = 2 }) {
    return "${parameterOne} and ${parameterTwo}";
}

exampleFunction(parameterOne: 1);
exampleFunction(parameterOne: 1, parameterTwo: 2);
```

Так же функции в Dart можно сохранять в переменные и передавать как параметры

**Dart**
```dart
void exampleFunction(void Function(int) f) {
    f(100);
}

final void Function(int) functionVariable = (int i) { print("Some action ${i}"); };
exampleFunction(functionVariable);
```

<details>
  <summary> <b>Swift</b> </summary>

  ```swift
  func exampleFunction(f: (Int) -> Void) {
      f(100)
  }

  let f: (Int) -> Void = { i in print("Some action \(i)") }
  exampleFunction(f: f)
  ```
  <br>
  
</details>

<details>
  <summary> <b>Kotlin</b> </summary>

  ```kotlin
  fun exampleFunction(f: (Int) -> Unit) {
      f(100)
  }

  val f: (Int) -> Unit = { i  -> print("Some action ${i}") }
  exampleFunction(f = f)
  ```
  <br>
  
</details>

<details>
  <summary> <b>JS</b> </summary>

  ```js
  function exampleFunction(f) {
    return f(100);
  }

  let f = function(i) { console.log(`Some action ${i}`); };
  exampleFunction(f)
  ```
  <br>
  
</details>
<br>

## Ассинхронность

**Dart** - однопоточный язык программирования, поэтому когда стартует приложение создается один объект(изолят), который управляет памятью и event-loop. Можно создавать несколько изолятов, но об этом лучше прочитать отдельно. Важно понять, что асинхронность в Dart (как и в JavaScript) не равно параллельность и многопоточность. Если выполнять большие участки кода асинхронно, это все равно может тормозить UI во Flutter. В Dart, как и в JS используется концепция Future/Promise

**Dart**
```dart
Future<String> exampleFunctionOne(int parameter) async {
  return Future<String>((){ return "some parameter: ${parameter}"; });
  // return Future<String>.value("some parameter: ${parameter}");
  // return "some parameter: ${parameter}";
}

exampleFunctionTwo() async {
  final result = await exampleFunctionOne(1);
  print(result);
}

exampleFunctionTwo();
```

<details>
  <summary> <b>Swift</b> </summary>

  ```swift
  func exampleFunctionOne(parameter: Int) async throws -> String {
    return "some parameter: \(parameter)"
  }

  func exampleFunctionTwo() async throws {
    let result = try await exampleFunctionOne(parameter: 1)
    print(result)
  }

  exampleFunctionTwo()
  ```
  <br>
  
</details>

<details>
  <summary> <b>Kotlin</b> </summary>

  ```kotlin
  suspend fun exampleFunctionOne(parameter: Int): String {
    return "some parameter: \(parameter)"
  }

  suspend fun exampleFunctionTwo() {
    let result = try await exampleFunctionOne(parameter: 1)
    print(result)
  }

  exampleFunctionTwo()
  ```
  <br>
  
</details>

<details>
  <summary> <b>JS</b> </summary>

  ```js
  async function exampleFunctionOne(parameter) {
      return `some parameter: ${parameter}`;
      // Promise.resolve(`some parameter: ${parameter}`);
  }

  async function exampleFunctionTwo() {
      let result = await exampleFunctionOne(1);
      console.log(result);
  }

  exampleFunctionTwo()
  ```
  <br>
  
</details>
<br>

Асинхронные функции могут возвращать ошибки, ловить их можно через стандарный механизм `try catch`

**Dart**
```dart
try {
  await exampleFunctionTwo();
} catch (e) {
  // Catch arror
}
```

## Классы
`Dart` - объектно-ориентированный язык, поэтому все в нем объекты. Объекты могут создаваться через конструкторы. Нужно быть аккуратными, потому что конструкторы в Dart достаточно специфичны и их синтаксис не всегда понятен. Важно отметить, что в dart нет модификаторов доступа public / private / protected, вместо этого используется конвенция `_` - свойство/метод приватны, без - публичные

**Dart**
```dart
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
      this.stringValue = null, // короткая запись верхней строки (аналог required String stringValue = null , stringValue = stringValue )
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
```

<details>
  <summary> <b>Swfit</b> </summary>

  ```swift
  public class SomeClass {
      public let intValue: Int
      public var stringValue: String?
      public let lazyValue: Bool!
      
      private let somePrivateValue: Int = 1
      
      public init(
          intValue: Int,
          stringValue: String? = nil,
          lazyValue: Bool
      ) {
          self.intValue = intValue
          self.stringValue = stringValue
          self.lazyValue = lazyValue
      }
      
      public func somePublicFunction() {
          
      }
      
      private func somePrivateFunction() {
          
      }
  }
  ```
  <br>
  
</details>

<details>
  <summary> <b>Kotlin</b> </summary>

  ```kotlin
  public class SomeClass {
      public val intValue: Int
      public var stringValue: String? = null
      public val lazyValue: Boolean
      private val somePrivateValue: Int = 1
      
      public constructor(
          intValue: Int, 
          stringValue: String? = null, 
          lazyValue: Boolean
      ) {
          this.intValue = intValue
          this.stringValue = stringValue
          this.lazyValue = lazyValue
      }
      
      public fun somePublicFunction() {

      }
      
      private fun somePrivateFunction() {

      }
  }
  ```
  <br>
</details>

<br>
Так же в Dart можно создавать константные конструкторы (объекты создаваемые через них будут константами времени компиляции)

**Dart**
```dart
class SomeClass {
    final int intValue;
    const SomeClass({ required this.intValue });
}
```

## Ссылки и статьи
* [Dart Language Tour](https://dart.dev/guides/language/language-tour)
* [DartPad онлайн-песочница для работы с Dart](https://dartpad.dev/)
* [Dart vs Kotlin (хорошее сравнение для Android-разработчиков)](https://davidmigloz.medium.com/dart-for-kotliners-eb6d6a6676b#db8b)
* [Dart vs Swift (хорошее сравнение для iOS-разработчиков)](https://codewithandrea.com/articles/dart-vs-swift-a-comparison/)
