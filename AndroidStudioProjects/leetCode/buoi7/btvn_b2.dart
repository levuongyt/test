void main() {
  List<int> input = [1, 2, 3, 1];
  print(viTriMax(input));
}

int viTriMax(List<int> input) {
  for (int i = 0; i < input.length; i++) {
    if ((i == 0 || input[i] > input[i - 1]) &&
        (i == input.length - 1 || input[i] > input[i + 1])) {
      return i;
    }
  }
  return -1;
 }
