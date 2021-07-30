import 'dart:io';

void main() {
  int? x = int.parse(stdin.readLineSync()!);

  if (x % 3 == 0 && x % 5 == 0) {
    print("Hello World");
  } else if (x % 5 == 0) {
    print("World");
  } else if (x % 3 == 0) {
    print("Hello");
  } else {
    print("Error");
  }
}
