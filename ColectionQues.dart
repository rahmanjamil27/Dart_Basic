1.Create a list of names and print all names using list.
Answer: void main() {
  List<String> names = ["John", "Alice", "Bob", "Emma", "David"];

  for (String name in names) {
    print(name);
  }
}
2.Create a set of fruits and print all fruits using loop.
Answer: void main() {
  Set<String> fruits = {"Apple", "Banana", "Mango", "Orange", "Grapes"};

  for (String fruit in fruits) {
    print(fruit);
  }
}
3.Create a program thats reads list of expenses amount using user input and print total.
Answer:import 'dart:io';

void main() {
  stdout.write("How many expenses do you want to enter? ");
  int count = int.parse(stdin.readLineSync()!);

  List<double> expenses = [];
  double total = 0;

  for (int i = 1; i <= count; i++) {
    stdout.write("Enter expense $i: ");
    double amount = double.parse(stdin.readLineSync()!);
    expenses.add(amount);
    total += amount;
  }

  print("\nExpenses: $expenses");
  print("Total expense: $total");
}
4.Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.
Answer:void main() {
  List<String> days = [];

  days.add("Sunday");
  days.add("Monday");
  days.add("Tuesday");
  days.add("Wednesday");
  days.add("Thursday");
  days.add("Friday");
  days.add("Saturday");

  for (String day in days) {
    print(day);
  }
}
5.Add your 7 friend names to the list. Use where to find a name that starts with alphabet a.
Answer:void main() {
  List<String> friends = [
    "Alice",
    "Arif",
    "Bipul",
    "Anika",
    "David",
    "Arafat",
    "Emma"
  ];

  var namesStartingWithA =
      friends.where((name) => name.toLowerCase().startsWith('a'));

  print("Friends whose names start with 'A':");
  for (var name in namesStartingWithA) {
    print(name);
  }
}
6.Create a map with name, address, age, country keys and store values to it. Update country name to other country and print all keys and values.
Answer:void main() {
  Map<String, dynamic> person = {
    "name": "John",
    "address": "Dhaka",
    "age": 25,
    "country": "Bangladesh"
  };
  person["country"] = "Canada";

  person.forEach((key, value) {
    print("$key: $value");
  });
}
7.Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.
Answer:void main() {
  Map<String, String> contact = {
    "name": "John",
    "phone": "01712345678"
  };

  var keysWithLength4 =
      contact.keys.where((key) => key.length == 4);

  print("Keys with length 4:");
  for (var key in keysWithLength4) {
    print(key);
  }
}
8.Create a simple to-do application that allows user to add, remove, and view their task.
Answer:
import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print("\n==== TO-DO MENU ====");
    print("1. Add Task");
    print("2. Remove Task");
    print("3. View Tasks");
    print("4. Exit");

    stdout.write("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        stdout.write("Enter new task: ");
        String task = stdin.readLineSync()!;
        tasks.add(task);
        print("Task added successfully.");
        break;

      case 2:
        if (tasks.isEmpty) {
          print("No tasks to remove.");
        } else {
          print("Your Tasks:");
          for (int i = 0; i < tasks.length; i++) {
            print("${i + 1}. ${tasks[i]}");
          }

          stdout.write("Enter task number to remove: ");
          int index = int.parse(stdin.readLineSync()!);

          if (index > 0 && index <= tasks.length) {
            tasks.removeAt(index - 1);
            print("Task removed successfully.");
          } else {
            print("Invalid task number.");
          }
        }
        break;

      case 3:
        if (tasks.isEmpty) {
          print("No tasks available.");
        } else {
          print("Your Tasks:");
          for (int i = 0; i < tasks.length; i++) {
            print("${i + 1}. ${tasks[i]}");
          }
        }
        break;

      case 4:
        print("Exiting To-Do App. Goodbye!");
        return;

      default:
        print("Invalid choice. Please try again.");
    }
  }
}
