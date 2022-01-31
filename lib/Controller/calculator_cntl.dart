import 'package:bitfx/Model/calculator_model.dart';
import 'package:get/get.dart';

class Fxcalculator extends GetxController{
  // FxCal calculator = Get.put(FxCal());

  usdPair(double accontBalance, double risk, double stopLoss) {
    double valuePerPip = 10;
    double result = 00;
    double risktoPercentage = risk * 0.01;

    result = (accontBalance * risktoPercentage / stopLoss) / valuePerPip;

    return result.obs;
  }
}