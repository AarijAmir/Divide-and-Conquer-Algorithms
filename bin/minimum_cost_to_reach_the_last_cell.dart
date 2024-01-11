class MinimumCostToReachTheLastCell {
  int findMinCost(List<List<int>> cost, int row, int col) {
    if (row == -1 || col == -1) {
      return 100000000000;
    }
    if (row == 0 && col == 0) {
      return cost[0][0];
    }
    int minCost1 = findMinCost(cost, row, col - 1);
    int minCost2 = findMinCost(cost, row - 1, col);
    int minCost = min(minCost1, minCost2);
    return minCost + cost[row][col];
  }

  int min(int a, int b) {
    return (a > b) ? b : a;
  }
}
