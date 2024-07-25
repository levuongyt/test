void main() {
  List<int> nums = [1, 2, 3, 5];
  print(soLonNhat(nums));
}

int soLonNhat(List<int> nums) {
  List<int> result = List.from(nums);
  result.sort((a, b) => b.compareTo(a));
  int max = result.first;
  for (int i = 1; i < result.length - 1; i++) {
    if (max < result[i] * 2) {
      return -1;
    }
  }
  return max;
}
