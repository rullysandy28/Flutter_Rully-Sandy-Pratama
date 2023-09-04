class Calculator {
  // Method penjumlahan
  double tambah(double angka1, double angka2) {
    return angka1 + angka2;
  }

  // Method pengurangan
  double kurang(double angka1, double angka2) {
    return angka1 - angka2;
  }

  // Method perkalian
  double kali(double angka1, double angka2) {
    return angka1 * angka2;
  }

  // Method pembagian
  double bagi(double angka1, double angka2) {
    if (angka2 != 0) {
      return angka1 / angka2;
    } else {
      print('Pembagian oleh nol tidak diperbolehkan.');
      return double
          .infinity; // Mengembalikan nilai infinity jika pembagian oleh nol
    }
  }
}

void main() {
  var kalkulator = Calculator();

  double hasilTambah = kalkulator.tambah(5, 3);
  double hasilKurang = kalkulator.kurang(10, 4);
  double hasilKali = kalkulator.kali(6, 2);
  double hasilBagi = kalkulator.bagi(8, 2);

  print('Hasil Penjumlahan: $hasilTambah');
  print('Hasil Pengurangan: $hasilKurang');
  print('Hasil Perkalian: $hasilKali');
  print('Hasil Pembagian: $hasilBagi');
}
