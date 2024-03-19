import 'details.dart';

class AmountModel {
	String? total;
	String? currency;
	Details? details;

	AmountModel({this.total, this.currency, this.details});

	factory AmountModel.fromTotal100CurrencyUsdDetailsSubtotal100Shipping0ShippingDiscount0(Map<String, dynamic> json) {
		return AmountModel(
			total: json['total'] as String?,
			currency: json['currency'] as String?,
			details: json['details'] == null
						? null
						: Details.fromTotal100CurrencyUsdDetailsSubtotal100Shipping0ShippingDiscount0(json['details'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toTotal100CurrencyUsdDetailsSubtotal100Shipping0ShippingDiscount0() {
		return {
			'total': total,
			'currency': currency,
			'details': details?.toTotal100CurrencyUsdDetailsSubtotal100Shipping0ShippingDiscount0(),		};
	}
}
