import 'dart:io';

void main() {
  print('Hello, Dart!');

  stdout.write("Enter your Name:");

  var Name = stdin.readLineSync();

  print("Welcome $Name to Dart Programming");
}
