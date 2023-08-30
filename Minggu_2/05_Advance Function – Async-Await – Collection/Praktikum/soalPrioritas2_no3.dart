Future<int> hitungFaktorial(int n) async {
  if (n == 0 || n == 1) {
    await Future.delayed(Duration(milliseconds: 20));
    return 1;
  } else {
    await Future.delayed(Duration(milliseconds: 20));

    var hitung = await hitungFaktorial(n - 1);
    var hasil = n * hitung;
    return hasil;
    // return n * hitungFaktorial(n - 1);
  }
}

void main() async {
  int nilai = await hitungFaktorial(5);

  print(nilai);
}
