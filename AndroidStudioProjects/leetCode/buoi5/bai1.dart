void main(){
List<int> input=[10,3,8,9,4];
//print(dsThuHang(input));

 print(soLonThuHai(input));
}

/// bài 1:
List<String> dsThuHang(List<int> input){
 List<int> sortList=List.from(input);
 List<String> result=[];
 sortList.sort((a,b)=> b.compareTo(a));
 Map<int,String> ds={};
 for(int i=0;i<sortList.length;i++){
  if(i==0){
   ds[sortList[i]]='Gold';
  }else if(i==1){
   ds[sortList[i]]='Sliver';
  }else if(i==2){
   ds[sortList[i]]='Bronze';
  }else{
   ds[sortList[i]]='${i+1}'.toString();
  }
 }
 for(int i=0;i<input.length;i++){
  result.add(ds[input[i]]??'');
 }

  return result;
}

/// Bài 2

int? soLonThuHai(List<int> input){
 int? kq;
 List<int> dskq=input.toSet().toList();
 if(dskq.length<=1){
  return null ;
 }
 dskq.sort();
 dskq.removeLast();
 kq=dskq.last;
 return kq;
}
