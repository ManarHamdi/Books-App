import 'ListPrice.dart';
import 'RetailPrice.dart';
import 'Offers.dart';

class SaleInfo {
  SaleInfo({
      this.country, 
      this.saleability, 
      this.isEbook, 
      this.listPrice, 
      this.retailPrice, 
      this.buyLink, 
      this.offers,});

  SaleInfo.fromJson(dynamic json) {
    country = json['country'];
    saleability = json['saleability'];
    isEbook = json['isEbook'];
    listPrice = json['listPrice'];
    retailPrice = json['retailPrice'] != null ? RetailPrice.fromJson(json['retailPrice']) : null;
    buyLink = json['buyLink'];
    if (json['offers'] != null) {
      offers = [];
      json['offers'].forEach((v) {
        offers?.add(Offers.fromJson(v));
      });
    }
  }
  String? country;
  String? saleability;
  bool? isEbook;
  ListPrice? listPrice;
  RetailPrice? retailPrice;
  String? buyLink;
  List<Offers>? offers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = country;
    map['saleability'] = saleability;
    map['isEbook'] = isEbook;
    map['listPrice'] = listPrice;
    if (retailPrice != null) {
      map['retailPrice'] = retailPrice?.toJson();
    }
    map['buyLink'] = buyLink;
    if (offers != null) {
      map['offers'] = offers?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}