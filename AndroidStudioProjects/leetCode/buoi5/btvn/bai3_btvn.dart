void main(){
  List<int> arr=[4,2,1,3];
  //List<int> arr=[3,8,-10,23,19,-4,-14,27];
 print(kcNN(arr));
}
List<List<int>> kcNN(List<int> arr){
  List<List<int>> result=[];
  arr.sort();
  int kcMin= arr[1]-arr[0];
  for(int i=0;i<arr.length-1;i++){
    if(arr[i+1]-arr[i]<kcMin){
      kcMin=arr[i+1]-arr[i];
    }else if(arr[i+1]-arr[i]==kcMin){
      result.add([arr[i],arr[i+1]]);
    }
  }
  return result;
}
