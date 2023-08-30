void main() {
  List<List<String>> coba = [
    ['Mondstadt', 'Venti'],
    ['Liyue', 'Zhongli'],
    ['Inazuma', 'Raiden Ei'],
    ['Sumeru', 'Nahida'],
  ];

  Map<int, List<String>> mapCoba = {};

  for (int i = 0; i < coba.length; i++) {
    mapCoba[i] = coba[i];
  }

  print(mapCoba);
}
