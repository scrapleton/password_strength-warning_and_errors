import 'string_extension.dart';

int calculatePasswordStrength(String password) {
  bool hasNumber = false;
  bool hasUpperCase = false;
  bool hasLowerCase = false;
  bool hasUpperAndLower = false;
  bool hasSpecialChar = false;

  int score = 0;

  //For each letter
  for (int i = 0; i < password.length; i++) {
    String currentChar = password[i];

    //SecurityCheck
    if (!hasUpperCase) hasUpperCase = isUpperCase(currentChar);
    if (!hasLowerCase) hasLowerCase = isLowerCase(currentChar);
    if (!hasNumber) hasNumber = isNumber(currentChar);
    if (!hasSpecialChar) hasSpecialChar = isSpecialChar(currentChar);
  }

  hasUpperAndLower = hasUpperCase && hasLowerCase;

  //Increase score for each verified security check
  score = hasSpecialChar ? ++score : score;
  score = hasNumber ? ++score : score;
  score = hasUpperAndLower ? ++score : score;
  score = password.length >= 8 ? ++score : score;

  //Print results
  showPasswordStrengthResult(
      hasSpecialChar: hasSpecialChar,
      hasNumber: hasNumber,
      hasUpperAndLower: hasUpperAndLower,
      length: password.length);

  return score;
}

bool isUpperCase(String input) {
  if (isNumber(input)) return false;
  if (isSpecialChar(input)) return false;
  return input == input.toUpperCase();
}

bool isLowerCase(String input) {
  if (isNumber(input)) return false;
  if (isSpecialChar(input)) return false;
  return input == input.toLowerCase();
}

bool isSpecialChar(String input) {
  List<String> specialCharacters = '!@#\$%^&*(),.?":{}|<>-'.split('');

  for (String char in specialCharacters) {
    if (char == input) return true;
  }
  return false;
}

bool isNumber(String input) {
  List<String> numbers = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];

  for (String number in numbers) {
    if (number == input) return true;
  }
  return false;
}

showPasswordStrengthResult(
    {required bool hasSpecialChar,
    required bool hasNumber,
    required bool hasUpperAndLower,
    required int length}) {
  print('');
  print("${hasSpecialChar ? 'v'.green() : 'x'.red()} Has special character");
  print("${hasNumber ? 'v'.green() : 'x'.red()} Has number");
  print(
      "${hasUpperAndLower ? 'v'.green() : 'x'.red()} Has upperCase and lowerCase");
  print("${length >= 8 ? 'v'.green() : 'x'.red()} Is long enough");
  print('');
}
