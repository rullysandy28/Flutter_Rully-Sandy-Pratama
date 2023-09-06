# Summary Deep Dive Into Dart Object Oriented Programming

- Constructor merupakan method yang dijalankan saat pembuatan object. Constructor dapat meneriman parameter dan tidak memiliki return, nama constructor sama dengan nama class

- Inheritance adalah proses membuat kelas baru (kelas anak) dengan memanfaatkan kelas yang sudah ada (kelas induk) untuk tujuan mewarisi kemampuan (variabel dan metode) dari kelas yang sudah ada. Hal ini dilakukan dengan menggunakan kata kunci 'extends' saat mendefinisikan kelas baru.

- Method overriding adalah praktek menulis ulang metode yang sudah ada dalam kelas induk (super-class) di dalam kelas anak (sub-class) untuk memberikan implementasi yang berbeda. Syarat melakukan overriding adalah bahwa metode tersebut harus sudah ada dalam kelas induk, dan metode tersebut ditulis ulang dalam kelas anak dengan menambahkan anotasi '@override' pada baris sebelumnya.

- Interface adalah sebuah konsep di mana sebuah kelas menunjukkan metode apa saja yang harus diimplementasikan oleh kelas lain dengan menggunakan kata kunci 'implements'. Seluruh metode dalam interface harus di-override oleh kelas yang mengimplementasikannya. Berbeda dengan abstract class, yang juga merupakan kelas yang menunjukkan metode apa saja yang ada dalam suatu kelas, tetapi tidak dapat diinstansiasi menjadi objek. Abstract class dapat digunakan dengan kata kunci 'extends'.

- Polymorphism adalah sebuah konsep di mana objek kelas dapat memiliki kemampuan untuk mengambil bentuk objek lain, meskipun namanya sama, dengan menggunakan tipe data super class. Generics adalah konsep yang memungkinkan class atau fungsi menerima data dengan tipe yang berbeda. Terakhir, enkapsulasi adalah metode untuk mengatur struktur dalam sebuah kelas untuk mengurangi kompleksitas dan potensi bug dalam kode dengan membatasi akses langsung ke variabel dan metode dalam kelas tersebut
