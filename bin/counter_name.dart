import 'dart:io';

void main(List<String> arguments) {
  int count = 100;
  int operationValue;
  int function;
  bool stop = false;
  String? tempInput;
  late String userName;
  // Take input for incrementValue   String?   !=   String   means we can either have string value or null value


  print('Please enter user name');
  tempInput = stdin.readLineSync();

  if (tempInput != null && tempInput.isNotEmpty) {
    lbsimCounter = LBSIMCounter(
    userName = tempInput,
    count: 100,
    );
  } else {
    return;
  }
  while(!stop) {
    print('Enter operational value');
    tempInput = stdin.readLineSync();

    if(tempInput != null && tempInput.isNotEmpty){
      print('tempInput is : $tempInput');
    }
  }
}
