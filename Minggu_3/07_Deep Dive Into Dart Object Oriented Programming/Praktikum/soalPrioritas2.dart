abstract class Matematika {
  int hasil();
}

class KelipatanPersekutuanTerkecil implements Matematika {
  int x;
  int y;

  KelipatanPersekutuanTerkecil(this.x, this.y);

  @override
  int hasil() {
    int a = x;
    int b = y;
    while (a != b) {
      if (a < b) {
        a += x;
      } else {
        b += y;
      }
    }
    return a;
  }
}

class FaktorPersekutuanTerbesar implements Matematika {
  int x;
  int y;

  FaktorPersekutuanTerbesar(this.x, this.y);

  @override
  int hasil() {
    int a = x;
    int b = y;
    while (b != 0) {
      final temp = b;
      b = a % b;
      a = temp;
    }
    return a;
  }
}

void main() {
  Matematika operation = KelipatanPersekutuanTerkecil(10, 30);
  print(operation.hasil());

  operation = FaktorPersekutuanTerbesar(10, 30);
  print(operation.hasil());
}
