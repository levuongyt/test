void main(){
  List<int> nums=[5,1,1];
  print(soLonThuBa(nums));
}
int soLonThuBa(List<int> nums){
 List<int> result=nums.toSet().toList();
 result.sort((a,b)=>b.compareTo(a));
 if(result.length<3){
   return result.first;
 }
  return result[2];
}