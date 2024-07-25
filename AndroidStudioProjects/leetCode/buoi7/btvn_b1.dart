void main() {
  List<int> input = [2, 2, 1];
  print(soInt(input));
}
int soInt(List<int> input) {
  for (int i = 0; i < input.length; i++) {
    int dem = 0;
    for (int j = 0; j < input.length; j++) {
      if (input[i] == input[j]) {
        dem++;
      }
    }
    if (dem == 1) {
      return input[i];
    }
  }

  return -1;
}
