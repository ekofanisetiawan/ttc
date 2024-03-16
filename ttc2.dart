import 'dart:io';

void main() {
  // masukkan suhu fahrenheit
  stdout.writeln('Masukkan suhu dalam Fahrenheit:');
  // membaca suhu fahrenheit yang dimasukkan dan konversi menjadi double
  double fahrenheit = double.parse(stdin.readLineSync()!);
  // hitung konversi fahrenheit ke celcius
  double celsius = (fahrenheit - 32) * 5 / 9;
  // hasil perhitungan konversi
  print('$fahrenheit derajat Fahrenheit sama dengan $celsius derajat Celsius');

  // masukkan suhu reamur
  stdout.writeln('Masukkan suhu dalam Reamur:');
  // membaca suhu reamur yang dimasukkan dan konversi menjadi double
  double reamur = double.parse(stdin.readLineSync()!);
  // hitung konversi reamur ke celcius
  celsius = reamur * 5 / 4;
  // hasil perhitungan konversi
  print('$reamur derajat Reamur sama dengan $celsius derajat Celsius');

  // masukkan suhu kelvin
  stdout.writeln('Masukkan suhu dalam Kelvin:');
  // membaca suhu kelvin yang dimasukkan dan konversi menjadi double
  double kelvin = double.parse(stdin.readLineSync()!);
  // hitung konversi kelvin ke celcius
  celsius = kelvin - 273.15;
  // hasil perhitungan konversi
  print('$kelvin derajat Kelvin sama dengan $celsius derajat Celsius');
}
