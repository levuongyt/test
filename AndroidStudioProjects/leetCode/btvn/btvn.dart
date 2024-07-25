
void main(){
 // List<Human> humans=[Human('1', 'Vuong', 22, 'ABCD'),Human('2', 'Phong ', 21, 'daxzCD'),Human('3', 'Phuong', 23, 'A3dasCD')];
 // ManageHuman manageHuman=ManageHuman(humans);

  /// Sap xep theo tuoi
 // print(manageHuman.sapXepHuman());
  ///Tim kiem theo name
 // print(manageHuman.timKiem('Pho'));


  //List<int > input=[1,1,2,3];
 // List<int> input=[6,6,6,6];
  //print(soKeo(input));

  // List<int> inputDS1=[1,2,2,1,3,3];
  // List<int> inputDS2=[2,2,3,3];
  // print(ds(inputDS1, inputDS2));
 // print(ktChuoi('abc', 'cba'));
  print(ktSHH(19));

}
class Human{
  String _id;
  String name;
  int age;
  String image;

  Human(this._id, this.name, this.age, this.image);

  String get id => _id;

  set id(String value) {
    _id = value;
  }

  @override
  String toString() {
    return 'Human{_id: $_id, name: $name, age: $age, image: $image}';
  }
}
class ManageHuman{
  List<Human> humans;

  ManageHuman(this.humans);

  List<Human> timKiem(String inputTK){
    List<Human> kqTK=[];
    if(inputTK.isEmpty){
      kqTK.addAll(humans);
    }else {
      humans.forEach((element) {
        if(element.name.contains(inputTK)==true){
          kqTK.add(element);
        }
      });
      // for (int i = 0; i < humans.length; i++) {
      //   if (humans[i].name.contains(inputTK) == true) {
      //     humans[i];
      //     kqTK.add(humans[i]);
      //   }
      // }
    }
    return kqTK;
  }

  List<Human> sapXepHuman(){
    humans.sort((a, b) => b.age.compareTo(a.age));
    return  humans;
  }

  /// cách 2
  // List<Human> sapXepHuman(List<Human> humans){
  //     for(int i=0;i<humans.length-1;i++){
  //       for(int j=1;j<humans.length;j++){
  //         if(humans[i].age < humans[j].age){
  //           var temp= humans[i];
  //           humans[i]=humans[j];
  //           humans[j]=temp;
  //         }
  //       }
  //   }
  //     return humans;
  // }

 // List<String> dsSapXep(List<String> name, List<double> height){
 //    List<String> outPut=[];
 //    Map<name ,height> kq=[];
 //    return outPut;
 // }
}
//int dem=0;
int soKeo(List<int> input){
 int dem=input.toSet().length;
 int n=input.length;
  // for(int i=0;i<input.length-1;i++){
  //   if(input[i]!=input[i+1]){
  //     dem++;
  //   }
  // }
  if(dem>=n/2){
    return n;
  }
  return dem;
}

/// Buoi 3


List<int> ds(List<int> inputDS1,List<int> inputDS2){
  List<int> kq=[];
  for(int i=0;i<inputDS1.length;i++){
    for(int j=0;j<inputDS2.length;j++){
      if(inputDS1[i]==inputDS2[j]){
        kq.add(inputDS1[i]);
        kqKT(kq);
      }
    }
  }
  return kq;
}

List<int>kqKT(List<int>kq){
  for(int i=0;i<kq.length-1;i++){
    if(kq[i]==kq[i+1]){
      kq.remove(kq[i]);
    }
  }
  return kq;
}

bool ktChuoi(String s,String t){
 // bool kq=true;
  List<String> dsS=s.split('');
  List<String> dsT=t.split('');
  for(int i=0;i<dsS.length;i++){
    for(int j=dsT.length-1;j>=0;j--)
      {
        if(dsS[i]==dsT[j])
          {
            return true;
          }
      }
  }
  return false;
}

/// Bai 4
bool ktSHH(int n){

  while(n!=1){
    int nNguyen=(n~/10);
    int nDu=(n%10);
    n=(nNguyen*nNguyen)+(nDu*nDu);
    if(n==1){
      return true;
    }
  }
  return false;
}