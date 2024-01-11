class ConvertOneStringToAnother {
  int findMinOperations(String s1, String s2) {
    return _findMinOperations(s1, s2, 0, 0);
  }

  int _findMinOperations(String s1, String s2, int i1, int i2) {
    if (i1 == s1.length) {
      return s2.length - i2;
    }
    if (i2 == s2.length) {
      return s1.length - i1;
    }

    if (s1[i1] == s2[i2]) {
      return _findMinOperations(s1, s2, i1 + 1, i2 + 1);
    }
    int deleteOp = 1 + _findMinOperations(s1, s2, i1 + 1, i2);
    int insertOp = 1 + _findMinOperations(s1, s2, i1, i2 + 1);
    int replaceOp = 1 + _findMinOperations(s1, s2, i1 + 1, i2 + 1);
    return _min(deleteOp, _min(insertOp, replaceOp));
  }

  int _min(int a, int b) {
    return a < b ? a : b;
  }
}
