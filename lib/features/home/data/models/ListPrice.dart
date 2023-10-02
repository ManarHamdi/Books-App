class ListPrice {
  ListPrice({
      this.amountInMicros, 
      this.currencyCode,});

  ListPrice.fromJson(dynamic json) {
    amountInMicros = json['amountInMicros'];
    currencyCode = json['currencyCode'];
  }
  int? amountInMicros;
  String? currencyCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amountInMicros'] = amountInMicros;
    map['currencyCode'] = currencyCode;
    return map;
  }

}