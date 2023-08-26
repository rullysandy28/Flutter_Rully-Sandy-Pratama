void main() {
  int nilai = 80;

  if (nilai >= 70 && nilai <= 100) {
    print("Nilai A");
  } else if (nilai < 70 && nilai >= 40) {
    print("Nilai B");
  } else if (nilai < 40 && nilai >= 0) {
    print("Nilai C");
  } else {
    print("Nilai tidak ditemukan");
  }
}
