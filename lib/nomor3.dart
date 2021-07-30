import 'dart:io';

void main() {
  String? str = stdin.readLineSync();
  str = str!.toUpperCase();
  String? result = "";
  int? x = 0;
  if ((str.substring(str.length - 2, str.length) == "PM")) {
    if (str == "12:00:00 PM") {
      result = "12:00";
    } else {
      x = int.parse(str.substring(0, 2)) - 12;
      if (x >= 10) {
        result = x.toString() + ":" + str.substring(3, str.length - 6);
      } else {
        result = "0" + x.toString() + ":" + str.substring(3, str.length - 6);
      }
    }
  } else if ((str.substring(str.length - 2, str.length) == "AM")) {
    if (str == "12:00:00 AM") {
      result = "00:00";
    } else {
      result = (str.substring(0, str.length - 6));
    }
  } else {}
  print(result);
}
