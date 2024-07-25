void main() {
  //print(ktSo(333));
  List<int> input=[0,0,0,1,0,0,0,0,0,2,2,1,1,0];
  //print(demSoKhong(input));

  print(lengString('Hello World'));

  ///Bai 2
  print(ktDoDaiCanhTG(3, 4, 5));
  // print(ktDoDaiCanhTG(3, 1, 1));
  ///Bai 3
  List<int> inputsk = [1, 2, 4, 3, 7, 5];
  print(sapXepList(input));

  /// Bai 4
  print(isEmail('nguyenVanA@@gmail.comm'));

  /// Bai 5
  List<String> input1 = ['X++', 'X--', 'X++', 'X++'];
  print(congTru(input1));

  ///Bai 6
  List<String> input2 = [
    'hello word',
    'abd bcc nnjdd',
    'X++',
    'hda caa njc msdsl',
    'adm ccc'
  ];
  print(demSL(input2));

  ///Bai 7
  List<int> inputList = [1, 15, 6, 3];
  print(TongList(inputList));
}

int lengString(String s) {
  s = s.trim();
  List<String> chuoi = s.split(" ");
  String worldLast = chuoi.last;
  return worldLast.length;
}

/// Bai 2
bool ktDoDaiCanhTG(double a, double b, double c) {
  return (a + b > c && a + c > b && b + c > a) ? true : false;
}

///Bai 3
List<int> sapXepList(List<int> input) {
  for (int i = 0; i < input.length - 1; i++) {
    for (int j = 0; j < input.length - 1 - i; j++) {
      if (input[j] > input[j + 1]) {
        int doicho = input[j];
        input[j] = input[j + 1];
        input[j + 1] = doicho;
      }
    }
  }
  return input;
}

///
int demSL(List<String> input2) {
  List<int> lengthList = [];
  for (int index = 0; index < input2.length; index++) {
    int dodai = input2[index].split(' ').length;
    lengthList.add(dodai);
  }
  int slmax = 0;
  for (int i = 0; i < lengthList.length; i++) {
    if (lengthList[i] > slmax) {
      slmax = lengthList[i];
    }
  }
  return slmax;
}



///
bool isEmail(String email) {
  bool emailValid = RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(email);
  return emailValid;
}

int congTru(List<String> input) {
  int dem = 0;
  input.forEach((element) {
    if (element.contains('X++')) {
      dem++;
    } else if (element.contains('X--')) {
      dem--;
    }
  });
  return dem;
}

///Bai 7
int TongList(List<int> inputList) {
  int tongSo = 0;
  int tongChuSo = 0;
  for (int i = 0; i < inputList.length; i++) {
    tongSo += inputList[i];
  }
  List<String> kqTach = inputList.map((number) => number.toString()).toList();
  for (String numberKqTach in kqTach) {
    for (int i = 0; i < numberKqTach.length; i++) {
      tongChuSo += int.parse(numberKqTach[i]);
    }
  }

  return tongSo - tongChuSo;
}

List<double> DS(List<double> input) {
  input.map((e) => e*e).toList();
  return input;
}

// bool ktSo(int so){
//
//    while(so%7==0){
//       so=so~/7;}
//
//    while(so%7==0){
//      so=so~/7;}
//         if(so%3==0){
//           so=so~/3;
//           if(so%2==0){
//             so=so~/2;
//           }
//         }
//       }
//       return true;
//     }
//   }
//
//   return false;
// }


// int demSoKhong(List<int> input){
//   int dem=0;
//   for(int i=0;i<input.length;i++)
//     {
//       if(input[i]==0){
//         dem++;
//       }
//       else{
//         if
//       }
//     }
//
//   return dem;
//
// }



