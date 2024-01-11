class LongestCommonSubsequence {
  int findLCSLength(String s1, String s2) {
    return _findLCSLengthRecursive(s1, s2, 0, 0);
  }

  int _findLCSLengthRecursive(String s1, String s2, int i1, int i2) {
    if (i1 == s1.length || i2 == s2.length) {
      return 0;
    }

    int c1 = 0;
    if (s1[i1] == s2[i2]) {
      c1 = 1 + _findLCSLengthRecursive(s1, s2, i1 + 1, i2 + 1);
    }

    int c2 = _findLCSLengthRecursive(s1, s2, i1, i2 + 1);
    int c3 = _findLCSLengthRecursive(s1, s2, i1 + 1, i2);

    return [c1, c2, c3].reduce((a, b) => a > b ? a : b);
  }
}
