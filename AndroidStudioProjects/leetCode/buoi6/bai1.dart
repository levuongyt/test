void main() {
//List<int> height=[1000,1000,4,2000,1000,3];
  // List<int> height = [5000, 1000, 2000, 3, 4];
  // print(cacSoTD(height));

  // print(soToTien(124500));

  List<int> prices = [7, 1, 5, 3, 6];
  print(maxLoiNhuan(prices));
}

/// bài 1000
int cacSoTD(List<int> height) {
  List<int> expected = List.from(height);
  expected.sort();
  int count = 0;
  for (int i = 0; i < height.length; i++) {
    if (height[i] != expected[i]) {
      count++;
    }
  }
  return count;
}

/// bài 2000
int soToTien(int n) {
  int count = 0;
  while (n > 0) {
    if (n >= 500000) {
      count += n ~/ 500000;
      n %= 500000;
    } else if (n >= 200000) {
      count += n ~/ 200000;
      n %= 200000;
    } else if (n >= 100000) {
      count += n ~/ 100000;
      n %= 100000;
    } else if (n >= 50000) {
      count += n ~/ 50000;
      n %= 50000;
    } else if (n >= 20000) {
      count += n ~/ 20000;
      n %= 20000;
    } else if (n >= 10000) {
      count += n ~/ 10000;
      n %= 10000;
    } else if (n >= 5000) {
      count += n ~/ 5000;
      n %= 5000;
    } else if (n >= 2000) {
      count += n ~/ 2000;
      n %= 2000;
    } else if (n >= 1000) {
      count += n ~/ 1000;
      n = 0;
    } else {
      return -1;
    }
  }
  return count;
}

/// Bai 3
int maxLoiNhuan(List<int> prices) {
  int max = 0;
  int minGia = prices[0];
  for (int i = 1; i < prices.length; i++) {
    int currentProfit = prices[i] - minGia;
    if (currentProfit > max) {
      max = currentProfit;
    }
    if (prices[i] < minGia) {
      minGia = prices[i];
    }
  }
  return max;
}
