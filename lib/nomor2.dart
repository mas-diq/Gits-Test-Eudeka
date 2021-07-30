import 'dart:io';

var scr = true;
var msg = "";

void main() {
  String? str = stdin.readLineSync();
  if (cekEmail(str!)) {
    cekDomain(str);
    print("$str : $msg");
  } else {
    print("Maaf, $str : $msg");
  }
}

bool cekEmail(String x) {
  for (int i = 0; i < x.length; i++) {
    if (x[i] == "@" && i != x.length) {
      if (x.substring(0, i).length <= 20) {
        for (int j = i; j < x.length; j++) {
          if (x[j] == ".") {
            scr = true;
            break;
          } else if (j < x.length - 1) {
            continue;
          } else {
            scr = false;
            msg = "Format email wajib menggunakan tanda titik ‘.’ setelah ‘@’";
            break;
          }
        }
        break;
      } else {
        scr = false;
        msg = "Panjang email maksimum 20 karakter sebelum ‘@’";
        break;
      }
    } else if (i == x.length - 1) {
      scr = false;
      msg = "Format email wajib menggunakan ‘@’";
    }
  }
  return scr;
}

bool cekDomain(String x) {
  if ((x.substring(x.length - 3, x.length) == ".id") ||
      (x.substring(x.length - 6, x.length) == ".co.id")) {
    scr = true;
    msg = "Email Valid";
  } else {
    scr = false;
    msg = "domain yang diperbolehkan hanya “.co.id” dan “.id";
  }
  return scr;
}