void main(){
  List<int> number=[-4,-1,0,3,10];
  print(dsBinhPhuong(number));
}
List<int> dsBinhPhuong(List<int> number){
  List<int> result=[];
  int lengthNB=number.length;
  for(int i=0;i<lengthNB;i++){
    int ptNumber=number[i];
    ptNumber=ptNumber*ptNumber;
    result.add(ptNumber);
  }
  result.sort();
  return result;
}