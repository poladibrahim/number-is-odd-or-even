import 'dart:io';

void main() {
  print("Enter your birthday date as yyyy-mm-dd");
  String? birthdayDateAsString = stdin.readLineSync()!;
  DateTime birthdayDate = DateTime.parse(birthdayDateAsString);
  DateTime currentDate = DateTime.now();
  DateTime deathDate = new DateTime(birthdayDate.year + 100, birthdayDate.month, birthdayDate.day);

  int finalYear = deathDate.year - currentDate.year;
  if (finalYear < 0) {
    print("You have already 100 years old");
  } else {
    int finalMonth;
    deathDate.month > currentDate.month ? finalMonth = deathDate.month - currentDate.month : finalMonth = currentDate.month - deathDate.month;
    int finalDay;
    deathDate.day > currentDate.day ? finalDay = deathDate.day - currentDate.day : finalDay = currentDate.day - deathDate.day;
    print("After ${deathDate.year - currentDate.year} years, ${deathDate.month - currentDate.month} months and ${deathDate.day - currentDate.day} days You will 100 years old ");
  }
}
