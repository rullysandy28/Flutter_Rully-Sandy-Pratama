void main() {
  int sisi = 5;
  int panjang = 10;
  int lebar = 5;

  int kelilingPersegi = 4 * sisi;
  int luasPersegi = sisi * sisi;

  int kelilingPersegiPanjang = 2 * (panjang + lebar);
  int luasPersegiPanjang = panjang * lebar;

  print("Keliling Persegi = $kelilingPersegi");
  print("Luas Persegi = $luasPersegi");
  print("===========================");
  print("Keliling Persegi Panjang = $kelilingPersegiPanjang");
  print("Luas Persegi Panjang = $luasPersegiPanjang");
}
