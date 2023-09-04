class Course {
  String judul;
  String deskripsi;

  Course(this.judul, this.deskripsi);
}

class Student {
  String nama;
  String kelas;
  List<Course> daftarCourse = [];

  Student(this.nama, this.kelas);

  // Method untuk menambahkan course ke daftar student
  void tambahCourse(String judul, String deskripsi) {
    var course = Course(judul, deskripsi);
    daftarCourse.add(course);
    print('Course ditambahkan: $judul');
  }

  // Method untuk menghapus course dari daftar student
  void hapusCourse(String judul) {
    var course = daftarCourse.firstWhere(
      (course) => course.judul == judul,
    );

    if (course != 0) {
      daftarCourse.remove(course);
      print('Course dihapus: $judul');
    } else {
      print('Course tidak ditemukan: $judul');
    }
  }

  // Method untuk melihat semua course yang dimiliki student
  void lihatDaftarCourse() {
    if (daftarCourse.isEmpty) {
      print('Student belum memiliki course.');
    } else {
      print('Daftar Course:');
      for (var course in daftarCourse) {
        print('course: ${course.judul}, Deskripsi: ${course.deskripsi}');
      }
    }
  }
}

void main() {
  // Membuat objek student
  var student = Student('John', 'Kelas A');

  // Menambahkan beberapa course
  student.tambahCourse('Matematika', 'Pelajaran tentang matematika');
  student.tambahCourse('Bahasa Inggris', 'Pelajaran bahasa Inggris');

  // Melihat daftar course
  student.lihatDaftarCourse();

  // Menghapus course
  student.hapusCourse('Matematika');

  // Melihat daftar course setelah menghapus
  student.lihatDaftarCourse();
}
