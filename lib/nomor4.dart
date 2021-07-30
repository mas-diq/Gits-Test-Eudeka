import 'dart:io';

void main() {
  String? n = stdin.readLineSync();
  List s = List.filled(n!.length, null, growable: false);

  for (int i = 0; i < n.length; i++) {
    s[i] = n[n.length - 1 - i];
  }

  print(s.join());
}
