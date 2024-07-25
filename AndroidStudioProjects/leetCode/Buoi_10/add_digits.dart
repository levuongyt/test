void main(){
 print(sumChuSo(11));
}
int sumChuSo(int num){
  int tong=0;
  List<String> dsChuSo=num.toString().split('');
  for(int i=0;i<dsChuSo.length;i++){
    tong+= int.parse(dsChuSo[i]);
  }
  return tong;
}