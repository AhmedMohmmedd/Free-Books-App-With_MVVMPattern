import 'package:equatable/equatable.dart';

import 'list_price.dart';
import 'retail_price.dart';

class Offer extends Equatable {
  final int? finskyOfferType;
  final ListPrice? listPrice;
  final RetailPrice? retailPrice;
  final bool? giftable;

  const Offer({
    this.finskyOfferType,
    this.listPrice,
    this.retailPrice,
    this.giftable,
  });

  factory Offer.fromJson(Map<String, dynamic> json) => Offer(
        finskyOfferType: json['finskyOfferType'] as int?,
        listPrice: json['listPrice'] == null
            ? null
            : ListPrice.fromJson(json['listPrice'] as Map<String, dynamic>),
        retailPrice: json['retailPrice'] == null
            ? null
            : RetailPrice.fromJson(json['retailPrice'] as Map<String, dynamic>),
        giftable: json['giftable'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'finskyOfferType': finskyOfferType,
        'listPrice': listPrice?.toJson(),
        'retailPrice': retailPrice?.toJson(),
        'giftable': giftable,
      };

  @override
  List<Object?> get props {
    return [
      finskyOfferType,
      listPrice,
      retailPrice,
      giftable,
    ];
  }
}
