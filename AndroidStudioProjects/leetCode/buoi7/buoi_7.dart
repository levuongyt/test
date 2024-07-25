import 'dart:math';
void main() {
  ///Bai1
  List<int> input = [3, 4, 5, 6, 16, 25, 30, 36];
  print(soChinhPhuong(input));

  ///bai2
  List<int> input2=[1,3,3,4,4,5,6];
  print(viTriSo(input2, 3));

  ///bai 3
 // List<int>
}
///Bai 1
int soChinhPhuong(List<int> input) {
  int dem = 0;
  input.forEach((element) {
    int canBac2 = sqrt(element).toInt();
    if (canBac2 * canBac2 == element) {
      dem++;
    }
  });
  return dem;
}

///Bai2
List<int> viTriSo(List<int> input2,int target){
  print(input2);
  int viTriDau=-1;
  int vitriCuoi=-1;
  for(int i=0;i<input2.length;i++) {
    if (input2[i] == target) {
      viTriDau = i;
      break;
    }
  }
  for(int i=input2.length-1;i>=0;i--){
    if(input2[i]==target){
      vitriCuoi=i;
      break;
    }
  }
  if(viTriDau==-1){
    return [-1,-1];
  }
  return [viTriDau,vitriCuoi];
}

/// Bai 3
int maxOCam(List<int> input3){
  int soOCam=1;
  for(int oCam in input3){
    soOCam+=(oCam-1);
  }
  return soOCam;
}
