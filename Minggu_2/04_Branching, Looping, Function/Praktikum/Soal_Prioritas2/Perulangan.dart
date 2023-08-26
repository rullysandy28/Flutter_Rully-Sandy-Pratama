import 'dart:io';

void main(List<String> args) {
  //nomor 1 cara 1 jika diketahui barisnya/tingginya
  // for (int s = 7; s >= 1; s--) {
  //   for (int b = 1; b <= 15; b++) {
  //     var sps = "  " * s--;
  //     var btg = "* " * b++;
  //     print(sps + btg);
  //   }
  // }

  // nomor 1 cara 2
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
}
