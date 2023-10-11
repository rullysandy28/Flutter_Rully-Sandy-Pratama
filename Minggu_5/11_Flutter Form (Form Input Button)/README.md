# Summary Flutter Form (Form Input Button)

- Form
    Menerima isian data dari pengguna dan isian data dapat lebih dari satu.
    contoh penggunaan form menggunakan StatefulWidget
    var formKey = GlobalKey<FormState>();
    form(
        key: formkey,
        child: inputWidgets,
    );

- Input
  - TextField
        Menerima isian data dari pengguna dan isian dapat lebih dari satu.
  - Radio
        Memberi opsi dari pengguna dan hanya dapat memilih satu opsi.
  - Checkbox
        Memberi opsi pada pengguna dan dapat memilih beberapa opsi.
  - Dropdown Button
        Memberi opsi pada pengguna dan hanya dapat memilih satu opsi. opsi hanya tampil ketika ditekan.

- Button
    Bersifat seperti tombol, dapat melakukan sesuatu saat ditekan.