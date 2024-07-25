void main() {
  /// bai 1
  List<List<int>> matran = [
    [1, 2, 3],
    [5, 2, 7],
    [6, 4, 4]
  ];
  print(sumDCMatrix(matran));

  ///bai2
  SinhVien sv1 = SinhVien('1', 'Vuong', 22, 10);
  SinhVien sv2 = SinhVien('2', 'Duc', 21, 9);
  SinhVien sv3 = SinhVien('3', 'Phong', 22, 3);
  List<SinhVien> dsSinhVien = [sv1, sv2, sv3];
  print(QLSinhVien().phanLoaiSV(dsSinhVien));
  print(QLSinhVien().timKiemSV(dsSinhVien, 'V'));

  ///Bai3
  print(tongCacSoKChiaHet13(10, 13));

  ///Bai4
  print(tong2ChuoiSo('12390492085290578207580', '42472985728562876785628'));
}

/// bai 1
int sumDCMatrix(List<List<int>> matran) {
  int sum = 0;
  for (int i = 0; i < matran.length; i++) {
    for (int j = 0; j < matran.length; j++) {
      if (i == j) {
        sum += matran[i][j];
      } else if (i + j == matran.length - 1) {
        sum += matran[i][j];
      }
    }
  }
  return sum;
}

/// bai2
class SinhVien {
  String _id;
  String name;
  int age;
  double diem;
  bool? totNghiep;
  SinhVien(this._id, this.name, this.age, this.diem, {this.totNghiep});

  String get id => _id; 

  set id(String value) {
    _id = value;
  }


  @override
  String toString() {
    return 'SinhVien{_id: $_id, name: $name, age: $age, diem: $diem, totNghiep: $totNghiep}';
  }
}

class QLSinhVien {
  List<SinhVien> phanLoaiSV(List<SinhVien> dsSinhVien) {
    List<SinhVien> dsSVTotNghiep = [];
    dsSinhVien.forEach((element) {
      if (element.diem >= 5.0) {
        element.totNghiep = true;
        dsSVTotNghiep.add(element);
      } else {
        element.totNghiep = false;
      }
    });
   // dsSVTotNghiep = dsSinhVien.where((element) => element.totNghiep == true).toList();
    return dsSVTotNghiep;
  }

  List<SinhVien> timKiemSV(List<SinhVien> dsSinhVien, String tenCanTim) {
    List<SinhVien> kqTimKiem = [];
    dsSinhVien.forEach((element) {
      if (element.name.contains(tenCanTim)) {
        kqTimKiem.add(element);
      }
    });
    return kqTimKiem;
  }
}

///Bai 3
int tongCacSoKChiaHet13(int x, int y) {
  int sum = 0;
  if (x > y) {
    return -1;
  }
  for (int i = x; i <= y; i++) {
    if (i % 13 != 0) {
      sum += i;
    }
  }
  return sum;
}

///Bai 4
String tong2ChuoiSo(String so1, String so2) {
  String result = '';
  BigInt s1 = BigInt.parse(so1);
  BigInt s2 = BigInt.parse(so2);
  BigInt tong = s1 + s2;
  result = tong.toString();
  return result;
}
