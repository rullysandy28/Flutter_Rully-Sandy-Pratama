// import 'dart:math';

void main() {
  //no 1
  double r = 7;

  double luas = hitungLuasLingkaran(r);
  print("Luas lingkaran dengan jari-jari $r adalah $luas");
  print(" ");
  //no 2A
  int nilaiA = 10;
  BigInt faktorialA = hitungFaktorial(nilaiA);
  print("Faktorial dari $nilaiA adalah $faktorialA");

  //no2B
  int nilaiB = 40;
  BigInt faktorialB = hitungFaktorial(nilaiB);
  print("Faktorial dari $nilaiB adalah $faktorialB");

  //no2C
  int nilaiC = 50;
  BigInt faktorialC = hitungFaktorial(nilaiC);
  print("Faktorial dari $nilaiC adalah $faktorialC");
}

double hitungLuasLingkaran(double r) {
  return 3.14 * r * r;
}

BigInt hitungFaktorial(int n) {
  if (n == 0 || n == 1) {
    return BigInt.one;
  } else {
    return BigInt.from(n) * hitungFaktorial(n - 1);
  }
}
