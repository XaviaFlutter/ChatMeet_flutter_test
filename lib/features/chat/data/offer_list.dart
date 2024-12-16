class Profit {
  final bool isProfit;
  final String profit;
  final int countGlass;
  final int cost;

  Profit(
      {required this.isProfit,
      required this.profit,
      required this.countGlass,
      required this.cost});
}

final List<Profit> offers = [
  Profit(isProfit: false, profit: '', countGlass: 1, cost: 99),
  Profit(isProfit: true, profit: 'Хит', countGlass: 3, cost: 199),
  Profit(isProfit: true, profit: '-42%', countGlass: 7, cost: 399),
];
