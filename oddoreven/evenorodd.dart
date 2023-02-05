import 'dart:io';

void main() {
  print("Enter your number for checking even or odd");
  int? number = int.parse(stdin.readLineSync()!);
  if (number % 2 == 0) {
    print("$number is odd");
  } else {
    print("$number is even");
  }
  // print("Do you want check again? [y/n]");
  // String? answer = stdin.readLineSync()!;
  // if (answer.toLowerCase() == 'y') {
  //   main();
  // } else {
  //   return;
  // }
  while (true) {
    print("Do you want check again? [y/n]");
    String? answer = stdin.readLineSync()!;
    if (answer.toLowerCase() == 'y') {
      print("Enter your number for checking even or odd");
      int? number = int.parse(stdin.readLineSync()!);
      if (number % 2 == 0) {
        print("$number is odd");
      } else {
        print("$number is even");
      }
      continue;
    } else {
      break;
    }
  }
}
