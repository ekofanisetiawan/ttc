import 'dart:io';

void main() {
  // masukan nama
  stdout.write("Siapa nama kamu? ");
  var name = stdin.readLineSync();

  // masukan jurusan
  stdout.write("Apa jurusan kamu? ");
  var major = stdin.readLineSync();

  // masukan keduanya
  print("Nama saya adalah $name dan jurusan saya adalah $major");
}
