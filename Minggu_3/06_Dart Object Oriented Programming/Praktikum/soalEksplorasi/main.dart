import 'dart:io';
import 'tokoBuku.dart';

void main(List<String> args) {
  var input = stdin;
  List<TokoBuku> dataBuku = [];
  bool found = false;

  try {
    while (true) {
      print("--------------MENU--------------");
      print("[1] Tambah Data Buku");
      print("[2] Hapus Data Buku");
      print("[3] Cari Data Buku");
      print("[4] Tampilkan Semua Data Buku");
      print("[0] Keluar");
      print("--------------------------------");

      stdout.write("Pilih Menu > ");
      var menu = int.tryParse(input.readLineSync() ?? '');

      if (menu == null) {
        print("[ERROR] Input tidak valid. Masukkan nomor menu.");
        continue;
      }

      switch (menu) {
        case 1:
          print("------- Tambah Data Buku--------");
          stdout.write("Masukkan Id Buku : ");
          var id = int.tryParse(input.readLineSync() ?? '');
          if (id == null) {
            print("[ERROR] Id Buku harus berupa angka.");
            continue;
          }
          stdout.write("Masukkan Harga Buku : ");
          var harga = int.tryParse(input.readLineSync() ?? '');
          if (harga == null) {
            print("[ERROR] Harga Buku harus berupa angka.");
            continue;
          }
          stdout.write("Masukkan Judul Buku : ");
          var judul = input.readLineSync() ?? '';
          stdout.write("Masukkan Penerbit Buku: ");
          var penerbit = input.readLineSync() ?? '';
          stdout.write("Masukkan Kategori Buku : ");
          var kategori = input.readLineSync() ?? '';

          print("\nData Berhasil Ditambahkan");
          print("==================================");
          dataBuku.add(TokoBuku(id, harga, judul, penerbit, kategori));
          break;

        case 2:
          print("--------------------------------");
          stdout.write("Masukkan id Buku > ");
          var id = int.tryParse(input.readLineSync() ?? '');
          for (var i = 0; i < dataBuku.length; i++) {
            if (dataBuku[i].id == id) {
              dataBuku.removeAt(i);
              found = true;
            }
          }
          if (!found) {
            print("Id tidak ditemukan\nHarap masukkan id yang sudah terdaftar");
          } else {
            print("Data telah berhasil dihapus!");
          }
          print("==================================");
          break;

        case 3:
          print("--------------------------------");
          stdout.write("Masukkan id Buku > ");
          var id = int.tryParse(input.readLineSync() ?? '');
          for (var i = 0; i < dataBuku.length; i++) {
            if (dataBuku[i].id == id) {
              print(dataBuku[i]);
              found = true;
            }
          }
          if (!found) {
            print("Id tidak ditemukan\nHarap masukkan id yang sudah terdaftar");
            print("\n");
          }
          print("==================================4");
          break;
        case 4:
          print("--------------------------------");
          if (dataBuku.isEmpty) {
            print("Data Buku Masih Kosong");
          } else {
            for (var i = 0; i < dataBuku.length; i++) {
              print(dataBuku[i]);
            }
          }
          print("==================================");
          break;

        case 0:
          print("Keluar dari program.");
          return; // Exit the program
        default:
          print("[ERROR] Menu tidak valid. Harap pilih menu yang benar.");
          print("");
          break;
      }
    }
  } catch (e) {
    print("[ERROR] Terjadi kesalahan: $e");
  }
}
