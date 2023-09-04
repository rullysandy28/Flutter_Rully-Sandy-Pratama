class Hewan {
  double berat; // Properti untuk menyimpan berat badan hewan

  // Konstruktor untuk menginisialisasi properti berat
  Hewan(this.berat);
}

class Mobil {
  double kapasitas;

  Mobil(this.kapasitas);

  List<Hewan> muatan =
      []; // List untuk menyimpan hewan yang diangkut oleh mobil

  // Method untuk menambahkan hewan ke dalam muatan mobil
  void tambahMuatan(Hewan hewan) {
    if (totalMuatan() + hewan.berat <= kapasitas) {
      muatan.add(hewan);
      print('Hewan ditambahkan ke dalam muatan mobil.');
    } else {
      print('Kapasitas muatan mobil tidak mencukupi.');
    }
  }

  // Method untuk menghitung total muatan mobil
  double totalMuatan() {
    double total = 0.0;
    for (var hewan in muatan) {
      total += hewan.berat;
    }
    return total;
  }
}

void main() {
  // Membuat objek hewan
  var kucing = Hewan(3.5);
  var anjing = Hewan(8.2);
  var kambing = Hewan(16.2);
  var sapi = Hewan(50);

  // Membuat objek mobil dan kapasitas mobil
  var mobil = Mobil(50);

  // Menambahkan hewan ke dalam muatan mobil
  mobil.tambahMuatan(kucing);
  mobil.tambahMuatan(anjing);
  mobil.tambahMuatan(kambing);
  mobil.tambahMuatan(sapi);

  double total = mobil.totalMuatan();
  print('Total muatan mobil saat ini: $total kg');
}
