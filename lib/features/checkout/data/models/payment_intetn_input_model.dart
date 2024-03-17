class PaymentIntentInputModel {
  final int amount;
  final String currency;

  PaymentIntentInputModel({required this.amount, required this.currency});

  Map<String, dynamic> toJon() {
    return {
      'amount': amount,
      'currency': currency,
    };
  }
}