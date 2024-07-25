void main(){
  List<int> nums=[1,2,2,10];
  print(maxChuVi(nums));

}
int maxChuVi(List<int> nums){
  if(nums.length<3){
    return 0;
  }
  List<int> result=List.from(nums);
  result.sort((a,b) => b.compareTo(a));
  int maxCanh=result.first;
  for(int i=1;i<result.length-1;i++){
    if(maxCanh<result[i]+result[i+1]){
      return result[i]+result[i+1]+maxCanh;
    }
  }
  return 0;
}