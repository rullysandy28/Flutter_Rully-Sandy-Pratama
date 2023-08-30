int rataRata(List<int> input) {
  int nilai = 0;

  for (int value in input) {
    nilai += value;
  }

  double average = nilai / input.length;
  int pembulatan = average.ceil(); // Pembulatan ke atas

  return pembulatan;
}

void main() {
  List<int> list = [7, 5, 3, 5, 2, 1];

  int hasil = rataRata(list);

  print(list);
  print("Rata-rata = $hasil");
}
