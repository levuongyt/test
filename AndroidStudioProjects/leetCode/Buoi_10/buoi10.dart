void main() {
  ///Bai1
  // print(ktSoNguyenTo(112));

  ///Bai2
  List<int> input = [-1, 3, -9, 0, 10, 5];
  // List<int> input=[-2,-1,-3];
  // print(tongMax(input));

  ///Bai3
  List<int> inputBo = [4, 4, 4, 4];
  // List<int> inputBo = [2, 1, 4, 3];
  print(maxSoLuongSua(inputBo));
}

/// Bai1
bool ktSoNguyenTo(int n) {
  String input = n.toString();
  List<String> inputds = input.split('');
  int tich = 1;
  for (int i = 0; i < inputds.length; i++) {
    int kq = int.parse(inputds[i]);
    tich *= kq;
  }
  if (tich <= 1) {
    return false;
  }
  if (tich == 2) {
    return true;
  }
  for (int i = 2; i <= tich ~/ 2; i++) {
    if (tich % i == 0) {
      return false;
    }
  }
  return true;
}

///Bai2
int tongMax(List<int> input) {
  int tongMax = 0;
  for (int i = 0; i < input.length - 1; i++) {
    for (int j = i + 1; j < input.length; j++) {
      int tong = (input[i] + input[j]).abs();
      if (tong > tongMax) {
        tongMax = tong;
      }
    }
  }
  return tongMax;
}

///Bai3
int maxSoLuongSua(List<int> inputBo) {
  List<int> dsSua = List.from(inputBo);
  dsSua.sort((a, b) => b.compareTo(a));
  int max = dsSua[0];
  for (int i = 1; i < dsSua.length; i++) {
    int index = dsSua[i] - i;
    if (index >= 0) {
      max += index;
    }
  }
  return max;
}
