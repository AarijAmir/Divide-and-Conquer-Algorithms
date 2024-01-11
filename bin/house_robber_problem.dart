class HouseRobber {
  int maxMoneyRecursive(List<int> houseNetWorth, int currentIndex) {
    if (currentIndex >= houseNetWorth.length) {
      return 0;
    }

    int stealCurrentHouse = houseNetWorth[currentIndex] +
        maxMoneyRecursive(houseNetWorth, currentIndex + 2);
    int skipCurrentHouse = maxMoneyRecursive(houseNetWorth, currentIndex + 1);

    return (stealCurrentHouse > skipCurrentHouse)
        ? stealCurrentHouse
        : skipCurrentHouse;
  }

  int maxMoney(List<int> houseNetWorth) {
    return maxMoneyRecursive(houseNetWorth, 0);
  }
}
