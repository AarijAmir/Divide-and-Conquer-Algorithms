class ZeroOneKnapsack {
  int knapSack(
      List<int> profits, List<int> weights, int capacity, int currentIndex) {
    if (capacity <= 0 || currentIndex < 0 || currentIndex >= profits.length) {
      return 0;
    }
    int profit1 = 0;
    if (weights[currentIndex] <= capacity) {
      profit1 = profits[currentIndex] +
          knapSack(profits, weights, capacity - weights[currentIndex],
              currentIndex + 1);
    }
    int profit2 = knapSack(profits, weights, capacity, currentIndex + 1);
    return (profit1 > profit2) ? profit1 : profit2;
  }

  int solveKnapSack(List<int> profits, List<int> weights, int capacity) {
    return knapSack(profits, weights, capacity, 0);
  }
}
