import 'dart:io';

void main() {
  //nomor1
  int angka = 23;

  if (angka >= 0 && angka <= 1) {
    print("Angka $angka bukan merupakan bilangan prima");
  } else {
    for (int i = 2; i <= angka;) {
      if (angka % i == 0) {
        print("Angka $angka bukan merupakan bilangan prima");
        break;
      } else {
        print("Angka $angka merupakan bilangan prima");
        break;
      }
    }
  }
  print(" ");
  //nomor2
  int n = 9;
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= n; j++) {
      int hasil = i * j;
      stdout.write("$hasil\t");
    }
    print("");
  }
}
