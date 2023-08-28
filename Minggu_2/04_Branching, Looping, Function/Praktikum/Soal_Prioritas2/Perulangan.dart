import 'dart:io';

void main(List<String> args) {
//nomor 1
  int tinggi = 8;
  for (int i = 1; i <= tinggi; i++) {
    for (int s = tinggi - i; s > 0; s--) {
      stdout.write("  ");
    }
    for (int b = 1; b <= i + (i - 1); b++) {
      stdout.write("* ");
    }
    stdout.write("\n");
  }

  print("");

  //nomor 2
  int n = 6;
  //i = baris
  //j = kolom
  for (int i = 1; i < 2 * n; i++) {
    for (int j = 1; j < 2 * n; j++) {
      if ((i <= j && i + j <= 2 * n) || (i > n && i >= j && i + j >= 2 * n))
        stdout.write("0");
      else
        stdout.write(" ");
    }
    stdout.write("\n");
  }

  // int height = 7; // Ukuran jam pasir pastikan ganjil
  // int space = 0;

  // for (int i = 0; i < height; i++) {
  //   for (int j = 0; j < space; j++) {
  //     stdout.write('=');
  //   }

  //   for (int j = 0; j < height - space * 2; j++) {
  //     stdout.write('0');
  //   }

  //   stdout.write('\n');

  //   // ~/ digunakan untuk pembulatan nilai ke bawah
  //   // ~/ misal 3,333 maka akan menjadi 3
  //   if (i < height ~/ 2) {
  //     space++;
  //   } else {
  //     space--;
  //   }
}
