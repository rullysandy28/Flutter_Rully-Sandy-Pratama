class TokoBuku {
  int _id;
  int _harga;
  String _judul;
  String _penerbit;
  String _kategori;

  TokoBuku(this._id, this._harga, this._judul, this._penerbit, this._kategori);

  int get id {
    return _id;
  }

  int get harga {
    return _harga;
  }

  String get judul {
    return _judul;
  }

  String get penerbit {
    return _penerbit;
  }

  String get kategori {
    return _kategori;
  }

  @override
  String toString() {
    return "ID Buku : $_id\nHarga Buku : $_harga\nJudul Buku : $_judul\nPenerbit : $_penerbit\nKategori : $_kategori";
  }
}
