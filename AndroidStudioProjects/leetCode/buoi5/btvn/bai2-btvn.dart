void main(){
   print(ktChuoi('abc', 'dog dog dog'));
}
bool ktChuoi(String pattern, String s){
 List<String>dsPattern=pattern.split('');
 List<String>dsS=s.split(' ');
 if(dsPattern.length!=dsS.length){
   return false;
 }
 Map<String,String> map={};
 Set<String> word={};
 for(int i=0;i<dsPattern.length;i++){
   String ptuPattern=dsPattern[i];
   String ptuS=dsS[i];
   if(map.containsKey(ptuPattern)){
     if(map[ptuPattern]!=ptuS){
       return false;
     }
   }else{
     if(word.contains(ptuS)){
       return false;
     }
     map[ptuPattern]=ptuS;
     word.add(ptuS);
   }
 }
  return true;
}