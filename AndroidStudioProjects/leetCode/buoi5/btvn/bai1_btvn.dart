void main() {
  List<String> input = ["Hello", "Alaska", "Dad", "Peace"];
  print(wordRow(input));
}

List<String> wordRow(List<String> input) {
  List<String> result = [];
  String row1 = 'QWERTYUIOP';
  String row2 = 'ASDFGHJKL';
  String row3 = 'ZXCVBNM';
  for (var word in input) {
    String wordHoa = word.toUpperCase();
    if (ktWord(wordHoa, row1) ||
        ktWord(wordHoa, row2) ||
        ktWord(wordHoa, row3) ) {
      result.add(word);
    }
  }
  return result;
}

bool ktWord(String word, String row) {
  for (int i = 0; i < word.length; i++) {
    if (!row.contains(word[i])) {
      return false;
    }
  }
  return true;
}
