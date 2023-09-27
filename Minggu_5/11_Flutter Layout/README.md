# Summary Flutter Layout

- Layout dalam Flutter adalah cara Anda mengorganisasi widget dalam widget tree sehingga tampilan aplikasi Anda terlihat dan berperilaku sesuai dengan yang Anda inginkan.
  
* Single-child layout
  - Container
    membuat sebuah box, untuk membungkus widget lain, box memiliki margin, padding, dan border.
    contoh code :
    container(
        child: Text(teks),
    );

  - Center
    berfungsi untuk meletakkan widget berada di bagian tengah.
    contoh code:
    center(
        child: Text(teks),
    );

  - SizedBox
    Box dapat diatur lebar dan tingginya dan lebih sederhana dari container.
    contoh code:
    Sizedbox(
        width: 100,
        height: 200,
        child: Text(teks),
    );

* Multi-child layout
  - Column
    berfungsi untuk mengatur widgets secara vertikal
    contoh code:
    Column(
        children: const[
            Text(teks),
            Text(teks),
            Text(teks),
            Text(teks),
        ]
    );

  - Row 
    berfungsi untuk mengatur widgets secara horizontal.
    contoh code:
    Row(
        children: const[
            Text(teks),
            Text(teks),
            Text(teks),
            Text(teks),
        ]
    );

  - ListView
    berfungsi untuk mengatur widget dalam bentuk list dan memiliki kemampuan untuk scroll.

  - GridView
    berfungsi untuk mengatur widget dalam bentuk galeri.