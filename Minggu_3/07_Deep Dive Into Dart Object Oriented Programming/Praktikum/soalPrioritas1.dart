class BangunRuang {
  int panjang;
  int lebar;
  int tinggi;

  BangunRuang(this.panjang, this.lebar, this.tinggi);

  int Volume() {
    return Volume();
  }
}

class Kubus extends BangunRuang {
  int sisi;

  Kubus(this.sisi) : super(sisi, sisi, sisi);

  @override
  int Volume() {
    // print(sisi * sisi * sisi);
    return sisi * sisi * sisi;
  }
}

class Balok extends BangunRuang {
  Balok(int panjang, int lebar, int tinggi) : super(panjang, lebar, tinggi);

  @override
  int Volume() {
    // print(panjang * lebar * tinggi);
    return panjang * lebar * tinggi;
  }
}

void main() {
  // Balok balok = Balok(5, 4, 3);
  // balok.Volume();

  BangunRuang bangun = Kubus(4);
  print(bangun.Volume());
}
