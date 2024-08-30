import 'calculate_password_strength.dart';
import 'string_extension.dart';
import 'dart:io';

void main() {
  int score = 0;
  String? password;

  stdout.write('\x1B[2J\x1B[0;0H');
  stdout.write('Enter a password: '.blue());

  //Uncomment to hide user input
  //stdin.echoMode = false;

  password = stdin.readLineSync();

  if (password != null && password.isNotEmpty) {
    score = calculatePasswordStrength(password);
  } else {}

  switch (score) {
    case 4:
      print('Password is strong with a score of '.blue() + '$score');
      break;
    case 3:
      print('Password is moderately strong with a score of '.blue() + '$score');
      break;
    case 2:
      print('Password is weak with a score of '.blue() + '$score');
      break;
    case 1:
      print('Password is very weak with a score of '.blue() + '$score');
      break;
    default:
      print('Password is too short and very weak with a score of '.blue() +
          '$score');
  }
}
