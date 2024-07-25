///Cho hai mảng số nguyên arr1 và arr2, trong đó arr2 là một mảng con của arr1.
///Hãy sắp xếp các phần tử của mảng arr1 sao cho các phần tử của arr2 xuất hiện đầu tiên theo thứ tự xuất hiện trong arr2,
/// sau đó sắp xếp các phần tử còn lại của arr1 theo thứ tự tăng dần.

void main() {
  List<int> arr1 = [28, 6, 22, 8, 44, 17,54,11];
  List<int> arr2 = [22, 28, 8, 6,54];
  print(dsSapXep(arr1, arr2));
}

List<int> dsSapXep(List<int> arr1, List<int> arr2) {
  List<int> result = [];
  List<int> resultSX = [];
  for (int i = 0; i < arr2.length; i++) {
    for (int j = 0; j < arr1.length; j++) {
      if (arr2[i] == arr1[j]) {
        result.add(arr1[j]);
      }
    }
  }
  resultSX = arr1.where((element) => !result.contains(element)).toList();
  resultSX.sort();
  result.addAll(resultSX);
  return result;
}
