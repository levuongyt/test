void main() {
  ///Bai 1
  List<List<int>> matran = [
    [1, 2, 3],
    [3, 7, 5],
    [6, 7, 8]
  ];
  // List<List<int>> matran = [
  //   [1, 2, 3, 4],
  //   [3, 7, 5, 6],
  //   [2, 3, 4, 5],
  //   [3, 5, 8, 9],
  // ];
  tinhMaTran(matran);

  ///Bai2
  List<int> input = [1, 2, 3, 4, 5];
  print(thaoTacChuyenMangSoDep(input));

  /// Bai3
  List<int> input2 = [1, 3, 3, 4, 1];
  print(soCoDat(input2));

  ///Bai4
  print(gioBatDau(9, 12));

  ///Bai 5
  List<int> people = [3, 5, 4, 2];
  print(soThuyen(people, 5));
}

///Bai 1
bool ktSoNguyenTo(int n) {
  if (n <= 1) {
    return false;
  }
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

void tinhMaTran(List<List<int>> matran) {
  int n = matran.length;
  int m = matran[0].length;
  if (n != m) {
    print('ma tran khong co giao diem duong cheo');
  }
  int tongDuongCheo = 0;
  int giaoDiem = matran[n ~/ 2][n ~/ 2];
  if (n % 2 == 1) {
    print('giao diem la: $giaoDiem');
    if (ktSoNguyenTo(giaoDiem)) {
      print('$giaoDiem la so nguyen to');
    } else {
      print('$giaoDiem khong phai la so nguyen to');
    }
  } else {
    for (int i = 0; i < n; i++) {
      if (matran[i][i] % 2 == 0) {
        tongDuongCheo += matran[i][i];
      }
    }
    print('Tong cac so chan tren duong cheo chinh: $tongDuongCheo');
  }
}

///Bai2
int thaoTacChuyenMangSoDep(List<int> input) {
  int demChan = 0;
  int demLe = 0;
  input.forEach((element) {
    if (element % 2 == 0) {
      demChan++;
    } else {
      demLe++;
    }
  });
  if (demChan < demLe) {
    return demChan;
  } else {
    return demLe;
  }
}

///Bai 3
int soCoDat(List<int> input2) {
  int cayMin = input2[0];
  int cayMax = input2[0];
  int demCoCayMin = 1;
  int demcoCayMax = 1;
  for (int i = 1; i < input2.length; i++) {
    if (input2[i] < cayMin) {
      cayMin = input2[i];
      demCoCayMin = 1;
    } else if (input2[i] == cayMin) {
      demCoCayMin++;
    }
    if (input2[i] > cayMax) {
      cayMax = input2[i];
      demcoCayMax = 1;
    } else if (input2[i] == cayMax) {
      demcoCayMax++;
    }
  }
  if (cayMin == cayMax) {
    return demCoCayMin;
  } else {
    return demCoCayMin + demcoCayMax;
  }
}

///Bai4
int gioBatDau(int timeHT, int soGioCB) {
  int gioBD = timeHT + soGioCB;
  if (gioBD >= 24) {
    gioBD = gioBD - 24;
  }
  return gioBD;
}

///Bai 5
int soThuyen(List<int> people, int limit) {
  int demThuyen = 0;
  people.sort((a, b) => b.compareTo(a));
  int i = 0;
  int j = people.length - 1;
  while (i <= j) {
    demThuyen++;
    if (people[i] + people[j] <= limit) {
      j--;
    }
    i++;
  }
  return demThuyen;
}
