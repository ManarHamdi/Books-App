import 'ListPrice.dart';
import 'RetailPrice.dart';

class Offers {
  Offers({
      this.finskyOfferType, 
      this.listPrice, 
      this.retailPrice, 
      this.giftable,});

  Offers.fromJson(dynamic json) {
    finskyOfferType = json['finskyOfferType'];
    listPrice = json['listPrice'];
    retailPrice = json['retailPrice'] != null ? RetailPrice.fromJson(json['retailPrice']) : null;
    giftable = json['giftable'];
  }
  int? finskyOfferType;
  ListPrice? listPrice;
  RetailPrice? retailPrice;
  bool? giftable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['finskyOfferType'] = finskyOfferType;
    map['listPrice'] = listPrice;
    if (retailPrice != null) {
      map['retailPrice'] = retailPrice?.toJson();
    }
    map['giftable'] = giftable;
    return map;
  }

}