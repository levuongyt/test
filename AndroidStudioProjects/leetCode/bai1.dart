void main() {
  ///Bai 1
  List<int> inputList = [3, 8, 3, 4, 25, 61, 72];
  print(listCD(inputList));

  ///Bai 2
  //print(ktInt(32));
  /// Bai 3
  List<int> ds = [
    0,
    1,
    0,
    2,
    0,
    3,
    0,
    0,
  ];
  print(demO(ds));

  ///Bai 4
  print(soLuongTran(7));

  ///Bai 5
  print(chuoiLe('234'));
}

///Bai 1
List<dynamic> listCD(List<int> inputList) {
  List<dynamic> result = [];
  for (int index = 0; index < inputList.length; index++) {
    if (index == 0) {
      result.add(inputList[index]);
    } else {
      if (index % 2 == 0 && index % 3 == 0) {
        result.add('FizzBuzz');
      } else if (index % 3 == 0) {
        result.add('Buzz');
      } else if (index % 2 == 0) {
        result.add('Fizz');
      } else {
        result.add(inputList[index]);
      }
    }
  }
  return result;
}

/// Bai 2
bool ktInt(int n) {
  for (int i = 1; i <= n ~/ 2; i++) {
    if (i * i == n) {
      return true;
    }
  }
  return false;
}

/// Bai 3
int demO(List<int> ds) {
  int dem = 0;
  for (int i = 0; i < ds.length; i++) {
    if (ds[i] == 0) {
      dem++;
    }
  }
  return dem;
}

/// Bai 4

int soLuongTran(int n) {
  int dem = 0;
  for (; n > 1;) {
    if (n % 2 == 0) {
      dem += (n ~/ 2);
      n = (n ~/ 2);
    } else {
      dem += ((n - 1) ~/ 2);
      n = (n - 1) ~/ 2 + 1;
    }
  }
  return dem;
}

num chuoiLe(String n){
  int kq=int.parse(n);

  return kq;
}