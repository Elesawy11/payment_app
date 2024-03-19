import 'item.dart';

class ItemListModel {
	List<Item>? items;

	ItemListModel({this.items});

	factory ItemListModel.fromItemsNameAppleQuantity4Price10CurrencyUsdNamePineappleQuantity5Price12CurrencyUsd(Map<String, dynamic> json) {
		return ItemListModel(
			items: (json['items'] as List<dynamic>?)
						?.map((e) => Item.fromItemsNameAppleQuantity4Price10CurrencyUsdNamePineappleQuantity5Price12CurrencyUsd(e as Map<String, dynamic>))
						.toList(),
		);
	}



	Map<String, dynamic> toItemsNameAppleQuantity4Price10CurrencyUsdNamePineappleQuantity5Price12CurrencyUsd() {
		return {
			'items': items?.map((e) => e.toItemsNameAppleQuantity4Price10CurrencyUsdNamePineappleQuantity5Price12CurrencyUsd()).toList(),		};
	}
}
