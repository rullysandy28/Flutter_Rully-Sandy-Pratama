Future<List<int>> data(List listData, int pengali) async {
  List<int> data = [];

  for (int elemen in listData) {
    int value = elemen * pengali;
    data.add(value);
    await Future.delayed(Duration(seconds: 1)); // Contoh penundaan simulasi
  }
  return data;
}

void main() async {
  List<int> angka = [2, 4, 6, 8];
  int pengali = 5;

  List<int> hasil = await data(angka, pengali);

  print(angka);
  print(hasil);
}
