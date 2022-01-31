import 'package:get/get.dart';

class FxCal {
  double accountBalance;
  String currencyPair;
  double risk;
  double stopLoss;
  double valuePerPip = 10;

  FxCal(
    this.accountBalance,
    this.currencyPair,
    this.risk,
    this.stopLoss,
    this.valuePerPip,
  );
}
