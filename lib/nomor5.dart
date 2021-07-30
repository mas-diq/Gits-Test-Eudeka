import 'dart:io';

void main() {
  String? n1 = stdin.readLineSync();
  n1 = n1!.toLowerCase();
  List s = List.filled(n1.length, null, growable: false);

  for (int i = 0; i < n1.length; i++) {
    s[i] = n1[n1.length - 1 - i];
  }
  var n2 = s.join();

  if (n1 == n2) {
    print("Palindrom");
  } else {
    print("Bukan Palindrom");
  }
}
