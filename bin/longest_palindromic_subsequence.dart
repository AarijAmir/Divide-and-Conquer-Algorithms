class LongestPalindromicSubsequence {
  int _findLPSLength(String st, int startIndex, int endIndex) {
    if (startIndex > endIndex) {
      return 0;
    }
    if (startIndex == endIndex) {
      return 1;
    }

    int count1 = 0;
    if (st[startIndex] == st[endIndex]) {
      count1 = 2 + _findLPSLength(st, startIndex + 1, endIndex - 1);
    }
    int count2 = _findLPSLength(st, startIndex + 1, endIndex);
    int count3 = _findLPSLength(st, startIndex, endIndex - 1);

    return (count1 > count2)
        ? (count1 > count3 ? count1 : count3)
        : (count2 > count3 ? count2 : count3);
  }

  int findLPSLength(String st) {
    return _findLPSLength(st, 0, st.length - 1);
  }
}
