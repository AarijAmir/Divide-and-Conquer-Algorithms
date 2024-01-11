import 'number_of_paths_to_reach_the_last_cell.dart';

void main(List<String> arguments) {
  NumberOfPathsToReachLastCell numberOfPathsToReachLastCell =
      NumberOfPathsToReachLastCell();
  List<List<int>> list = [
    [4, 7, 1, 6],
    [5, 7, 3, 9],
    [3, 2, 1, 2],
    [7, 1, 6, 3]
  ];
  int cost = 25;
  print(numberOfPathsToReachLastCell.numberOfPaths(
      list, list.length - 1, list[0].length - 1, cost));
  // MinimumCostToReachTheLastCell minimumCostToReachTheLastCell =
  //     MinimumCostToReachTheLastCell();
  // List<List<int>> cost = [
  //   [4, 7, 8, 6, 4],
  //   [6, 7, 3, 9, 2],
  //   [3, 8, 1, 2, 4],
  //   [7, 1, 7, 3, 7],
  //   [2, 9, 8, 9, 3],
  // ];

  // int row = cost[0].length - 1;
  // int col = cost[0].length - 1;

  // int result = minimumCostToReachTheLastCell.findMinCost(cost, row, col);
  // print("Minimum cost to reach (5*5): $result");

  // LongestCommonSubsequence longestCommonSubsequence =
  //     LongestCommonSubsequence();
  // print(longestCommonSubsequence.findLCSLength('rrrij', 'AarijAmir'));

  // LongestCommonSubsequence lcs = LongestCommonSubsequence();
  // print(lcs.hashCode);
  // String s1 = "AGGTAB";
  // String s2 = "GXTXAYB";
  // int lcsLength = lcs.findLCSLength(s1, s2);
  // print("Length of Longest Common Subsequence: $lcsLength");

  // ZeroOneKnapsack knapsack = ZeroOneKnapsack();
  // List<int> profits = [5, 10, 15, 7];
  // List<int> weights = [4, 3, 6, 2];
  // int capacity = 7;
  // int maxProfit = knapsack.solveKnapSack(profits, weights, capacity);
  // print("Maximum profit: $maxProfit");

  // ConvertOneStringToAnother converter = ConvertOneStringToAnother();
  // String s1 = "db";
  // String s2 = "b";
  // int minOperations = converter.findMinOperations(s1, s2);
  // print("Minimum operations to convert '$s1' to '$s2': $minOperations");

  // print(NumberFactor.waysToGetN(3));
  // print(NumberFactor.waysToGetN(4));

  // HouseRobber houseRobber = HouseRobber();
  // List<int> houseNetWorth = [6, 7, 1];
  // int maxMoney = houseRobber.maxMoney(houseNetWorth);
  // print('Maximum money that can be robbed: $maxMoney');
}
