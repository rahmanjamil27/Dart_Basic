1.Write a program in Dart to print your own name using function.
Answer:
void printName() {
  String name = "Your Name";
  print("My name is $name");
}

void main() {
  printName();
}

2.Write a program in Dart to print even numbers between intervals using function.
Answer:
import 'dart:io';

void printEvenNumbers(int start, int end) {
  print("Even numbers between $start and $end:");
  for (int i = start; i <= end; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

void main() {
  stdout.write("Enter start of interval: ");
  int start = int.parse(stdin.readLineSync()!);

  stdout.write("Enter end of interval: ");
  int end = int.parse(stdin.readLineSync()!);

  printEvenNumbers(start, end);
}
3.Create a function called greet that takes a name as an argument and prints a greeting message. For example, greet(“John”) should print “Hello, John”.
Answer:
void greet(String name) {
  print("Hello, $name");
}

void main() {
  greet("John");   
  greet("Alice"); 
}

4.Write a program in Dart that generates random password.
Answer:
import 'dart:math';

String generatePassword(int length) {
  const String chars =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()_+-=';
  Random random = Random();
  String password = '';

  for (int i = 0; i < length; i++) {
    password += chars[random.nextInt(chars.length)];
  }

  return password;
}

void main() {
  int passwordLength = 12; 
  String password = generatePassword(passwordLength);

  print("Generated password: $password");
}

5.Write a program in Dart that find the area of a circle using function. Formula: pi * r * r
Answer:
import 'dart:io';
import 'dart:math';

double calculateArea(double radius) {
  return pi * radius * radius;
}

void main() {
  stdout.write("Enter the radius of the circle: ");
  double radius = double.parse(stdin.readLineSync()!);

  double area = calculateArea(radius);

  print("The area of the circle is: $area");
}

6.Write a program in Dart to reverse a String using function.
Answer:
import 'dart:io';

String reverseString(String input) {
  return input.split('').reversed.join('');
}

void main() {
  stdout.write("Enter a string: ");
  String text = stdin.readLineSync()!;

  String reversed = reverseString(text);

  print("Reversed string: $reversed");
}

7.Write a program in Dart to calculate power of a certain number. For e.g 5^3=125
Answer:
import 'dart:io';
import 'dart:math';

double calculatePower(double base, double exponent) {
  return pow(base, exponent).toDouble();
}

void main() {
  stdout.write("Enter the base number: ");
  double base = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the exponent: ");
  double exponent = double.parse(stdin.readLineSync()!);

  double result = calculatePower(base, exponent);

  print("$base raised to the power $exponent is: $result");
}

8.Write a function in Dart named add that takes two numbers as arguments and returns their sum.
Answer:
double add(double num1, double num2) {
  return num1 + num2;
}

void main() {
  double sum = add(5, 3); 
  print("The sum is: $sum");
}

9.Write a function in Dart called maxNumber that takes three numbers as arguments and returns the largest number.
Answer:
double maxNumber(double a, double b, double c) {
  double max = a;

  if (b > max) {
    max = b;
  }
  if (c > max) {
    max = c;
  }

  return max;
}

void main() {
  double largest = maxNumber(10, 25, 15); 
  print("The largest number is: $largest");
}

10.Write a function in Dart called isEven that takes a number as an argument and returns True if the number is even, and False otherwise.
Answer:
bool isEven(int number) {
  return number % 2 == 0;
}

void main() {
  int num1 = 10;
  int num2 = 7;

  print("$num1 is even? ${isEven(num1)}");
  print("$num2 is even? ${isEven(num2)}");
}

11.Write a function in Dart called createUser with parameters name, age, and isActive, where isActive has a default value of true.
Answer:
void createUser(String name, int age, {bool isActive = true}) {
  print("Name: $name");
  print("Age: $age");
  print("Active: $isActive");
}

void main() {
  createUser("John", 25); 
  print("");
  createUser("Alice", 30, isActive: false);
}

12.Write a function in Dart called calculateArea that calculates the area of a rectangle. It should take length and width as arguments, with a default value of 1 for both. Formula: length * width.
Answer:
double calculateArea({double length = 1, double width = 1}) {
  return length * width;
}

void main() {
  print("Default area: ${calculateArea()}");          
  print("Area (5 x 3): ${calculateArea(length: 5, width: 3)}");
  print("Area (length only): ${calculateArea(length: 4)}");

}
