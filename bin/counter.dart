import 'dart:io';

class CounterApp {
  int count;
  String userName;
  CounterApp({required this.count, required this.userName});
}

void increment({required CounterApp counter, required int value}) {
  counter.count += value;
}

void decrement({required CounterApp counter, required int value}) {
  counter.count -= value;
}

void multiply({required CounterApp counter, required int value}) {
  counter.count *= value;
}

void divide({required CounterApp counter, required int value}) {
  counter.count ~/= value;
}

void remainder({required CounterApp counter, required int value}) {
  counter.count %= value;
}

void changeUsername({required CounterApp counter, required String newName}) {
  (newName.trim().isNotEmpty) ? counter.userName = newName : null;
}

void main(List<String> args) {
  int choice;
  int? value;
  bool stop = false;
  CounterApp counter;
  String? userName;

  print('Enter Your UserName: ');
  userName = stdin.readLineSync();
  if (userName != null && userName.isNotEmpty) {
    counter = CounterApp(count: 100, userName: userName);
  } else {
    return;
  }

  while (!stop) {
    print('''
    Select Your Choice :
    0. Print Counter Value
    1. Increment
    2. Decrement
    3. Multiply
    4. Divide
    5. Remainder
    6. Change UserName
    7. Stop
    ''');
    print('Your Choice: ${choice = int.parse(stdin.readLineSync()!)}');
    switch (choice) {
      case 0:
        print('The Value of Counter is: ${counter.count}');
        break;
      case 1:
        print('Enter the value to Increment Counter: ');
        increment(counter: counter, value: int.parse(stdin.readLineSync()!));
        print('Value After Increment is: ${counter.count}');
        break;
      case 2:
        print('Enter the value to Decrement Counter: ');
        decrement(counter: counter, value: int.parse(stdin.readLineSync()!));
        print('Value After Decrement is: ${counter.count}');
        break;
      case 3:
        print('Enter the value to Multiply Counter: ');
        multiply(counter: counter, value: int.parse(stdin.readLineSync()!));
        print('Value After Multiplication  is: ${counter.count}');
        break;
      case 4:
        print('Enter the value to Divide Counter: ');
        divide(counter: counter, value: int.parse(stdin.readLineSync()!));
        print('Value After Divide is: ${counter.count}');
        break;
      case 5:
        print('Enter the value to Remainder after Divide by Counter: ');
        remainder(counter: counter, value: int.parse(stdin.readLineSync()!));
        print(
            'Remainder After Division of value by Counter is: ${counter.count}');
        break;
      case 6:
        print('Enter the New Username: ');
        changeUsername(counter: counter, newName: stdin.readLineSync()!);
        print('Username Updated Successfully: ${counter.userName}');
        break;
      case 7:
        stop = true;
        break;
      default:
        print('Wrong Choice');
        break;
    }
  }
}
