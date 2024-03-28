import 'dart:io';
// Define an interface
abstract class MyInterface {
  void myMethod();
}
// Define a base class with an overridden method
class MyBaseClass {
  void myMethod() {
    print("Base Class Method");
  }
}
// Define a class that implements an interface and inherits from the base class
class MyClass extends MyBaseClass implements MyInterface {
  @override
  void myMethod() {
    print("Overridden Method");
  }
}

// Define a class with properties initialized from a file
class User {
  String? name;
  String? age;

  User(this.name, this.age);

  // Initialize from a file
  User.fromFile(String fileName) {
    File file = File(fileName);

    try {
      List<String> lines = file.readAsLinesSync();

      if (lines.length >= 2) {
        name = lines[0];
        age = lines[1];
      }
    } catch (e) {
      print("Error reading file: $e");
    }
  }
}

// Method demonstrating the use of a loop
void loopMethod() {
  List<int> numbers = [1, 2, 3, 4, 5];

  for (int num in numbers) {
    print(num);
  }
}

void main(List<String> arguments) {
  // Initialize an instance of MyClass
  MyClass myInstance = MyClass();

  // Initialize an instance of User from a file 'user_data.txt'
  User user = User.fromFile('user_data.txt');

  // Call the overridden method
  myInstance.myMethod();

  // Call the method demonstrating the use of a loop
  loopMethod();
}