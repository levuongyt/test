void main() {
  List<int> input=[1,2,2,3,3];
 print(singleNumber(input));
}
int singleNumber(List<int> nums) {
  Set<int> dsSo = Set<int>();
  for (int num in nums) {
    if (dsSo.contains(num)) {
      dsSo.remove(num);
    } else {
      dsSo.add(num);
    }
  }
  return dsSo.first;
}
