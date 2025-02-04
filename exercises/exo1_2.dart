import 'dart:io';
/*
void main() {
  stdout.write("What's your name ?\t");
  String? name = stdin.readLineSync();

  stdout.write("and your age ?\t");
  String? ageInput = stdin.readLineSync();
  int age = int.tryParse(ageInput ?? '') ?? 0;

  stdout.write("Your name is $name and your $age is age\n");
  stdout.write("In ${100 - age} years, you will have 100 years old \n \n");
}
*/

void main() {
  stdout.write("Give me a number non decimal\t");
  String? xInput = stdin.readLineSync();
  int x = int.tryParse(xInput ?? '') ?? 0;

  String test = x % 2 == 0 ? "even" : "odd";
  stdout.write("your number $x is $test\n");
}
