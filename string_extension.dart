extension coloredString on String {
  String blue() {
    return '\x1B[34m' + this + '\x1B[0m';
  }

  String red() {
    return '\x1B[31m' + this + '\x1B[0m';
  }

  String green() {
    return '\x1B[32m' + this + '\x1B[0m';
  }
}
