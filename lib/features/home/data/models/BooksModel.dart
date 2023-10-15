import 'dart:convert';
/// kind : "books#volume"
/// id : "9GwrmHRl490C"
/// etag : "sPRwLP9KWVI"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/9GwrmHRl490C"
/// volumeInfo : {"title":"Beginning XNA 3.0 Game Programming","subtitle":"From Novice to Professional","authors":["Bruno Evangelista","Alexandre Santos Lobao","Riemer Grootjans","Jose ANTONIO LEAL DEFARIAS"],"publisher":"Apress","publishedDate":"2009-05-31","description":"Would you like to create your own games, but never have the time to dig into the details of multimedia programming? Now you don't have to! XNA 3.0 makes it simple to create your own games, which will run on your PC and Xbox 360 console. Even if you don't know how to program at all, Beginning XNA 3.0 Game Programming: From Novice to Professional will teach you the basics of C# 2008 programming along the way. Don't get overwhelmed with details you don't need to know—just learn what you need to start creating your own games right now! This fast–paced introduction to XNA 3.0 and the C# language provides you with a quick–start guide to creating high–quality XNA games. You'll be introduced to the key concepts and ideas you need to know in a gradual fashion so that you master one concept before using it as a foundation for the next. Before long, you will have the skills to create smooth, professional–looking results in a range of gaming genres. By the end of the book, you will have constructed several working games and have an excellent knowledge base from which to investigate more advanced techniques.","industryIdentifiers":[{"type":"ISBN_13","identifier":"9781430218180"},{"type":"ISBN_10","identifier":"1430218185"}],"readingModes":{"text":true,"image":true},"pageCount":437,"printType":"BOOK","categories":["Computers"],"maturityRating":"NOT_MATURE","allowAnonLogging":false,"contentVersion":"2.4.3.0.preview.3","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=9GwrmHRl490C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=9GwrmHRl490C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"en","previewLink":"http://books.google.com/books?id=9GwrmHRl490C&printsec=frontcover&dq=subject:Programming&hl=&cd=1&source=gbs_api","infoLink":"http://books.google.com/books?id=9GwrmHRl490C&dq=subject:Programming&hl=&source=gbs_api","canonicalVolumeLink":"https://books.google.com/books/about/Beginning_XNA_3_0_Game_Programming.html?hl=&id=9GwrmHRl490C"}
/// saleInfo : {"country":"US","saleability":"NOT_FOR_SALE","isEbook":false}
/// accessInfo : {"country":"US","viewability":"PARTIAL","embeddable":true,"publicDomain":false,"textToSpeechPermission":"ALLOWED","epub":{"isAvailable":true,"acsTokenLink":"http://books.google.com/books/download/Beginning_XNA_3_0_Game_Programming-sample-epub.acsm?id=9GwrmHRl490C&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"},"pdf":{"isAvailable":true,"acsTokenLink":"http://books.google.com/books/download/Beginning_XNA_3_0_Game_Programming-sample-pdf.acsm?id=9GwrmHRl490C&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"},"webReaderLink":"http://play.google.com/books/reader?id=9GwrmHRl490C&hl=&source=gbs_api","accessViewStatus":"SAMPLE","quoteSharingAllowed":false}

BooksModel booksModelFromJson(String str) => BooksModel.fromJson(json.decode(str));
String booksModelToJson(BooksModel data) => json.encode(data.toJson());
class BooksModel {
  BooksModel({
      this.kind, 
      this.id, 
      this.etag, 
      this.selfLink, 
      this.volumeInfo, 
      this.saleInfo, 
      this.accessInfo,});

  BooksModel.fromJson(dynamic json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = json['volumeInfo'] != null ? VolumeInfo.fromJson(json['volumeInfo']) : null;
    saleInfo = json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    accessInfo = json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null;
  }
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    if (volumeInfo != null) {
      map['volumeInfo'] = volumeInfo?.toJson();
    }
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    return map;
  }

}

/// country : "US"
/// viewability : "PARTIAL"
/// embeddable : true
/// publicDomain : false
/// textToSpeechPermission : "ALLOWED"
/// epub : {"isAvailable":true,"acsTokenLink":"http://books.google.com/books/download/Beginning_XNA_3_0_Game_Programming-sample-epub.acsm?id=9GwrmHRl490C&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"}
/// pdf : {"isAvailable":true,"acsTokenLink":"http://books.google.com/books/download/Beginning_XNA_3_0_Game_Programming-sample-pdf.acsm?id=9GwrmHRl490C&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"}
/// webReaderLink : "http://play.google.com/books/reader?id=9GwrmHRl490C&hl=&source=gbs_api"
/// accessViewStatus : "SAMPLE"
/// quoteSharingAllowed : false

AccessInfo accessInfoFromJson(String str) => AccessInfo.fromJson(json.decode(str));
String accessInfoToJson(AccessInfo data) => json.encode(data.toJson());
class AccessInfo {
  AccessInfo({
      this.country, 
      this.viewability, 
      this.embeddable, 
      this.publicDomain, 
      this.textToSpeechPermission, 
      this.epub, 
      this.pdf, 
      this.webReaderLink, 
      this.accessViewStatus, 
      this.quoteSharingAllowed,});

  AccessInfo.fromJson(dynamic json) {
    country = json['country'];
    viewability = json['viewability'];
    embeddable = json['embeddable'];
    publicDomain = json['publicDomain'];
    textToSpeechPermission = json['textToSpeechPermission'];
    epub = json['epub'] != null ? Epub.fromJson(json['epub']) : null;
    pdf = json['pdf'] != null ? Pdf.fromJson(json['pdf']) : null;
    webReaderLink = json['webReaderLink'];
    accessViewStatus = json['accessViewStatus'];
    quoteSharingAllowed = json['quoteSharingAllowed'];
  }
  String? country;
  String? viewability;
  bool? embeddable;
  bool? publicDomain;
  String? textToSpeechPermission;
  Epub? epub;
  Pdf? pdf;
  String? webReaderLink;
  String? accessViewStatus;
  bool? quoteSharingAllowed;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = country;
    map['viewability'] = viewability;
    map['embeddable'] = embeddable;
    map['publicDomain'] = publicDomain;
    map['textToSpeechPermission'] = textToSpeechPermission;
    if (epub != null) {
      map['epub'] = epub?.toJson();
    }
    if (pdf != null) {
      map['pdf'] = pdf?.toJson();
    }
    map['webReaderLink'] = webReaderLink;
    map['accessViewStatus'] = accessViewStatus;
    map['quoteSharingAllowed'] = quoteSharingAllowed;
    return map;
  }

}

/// isAvailable : true
/// acsTokenLink : "http://books.google.com/books/download/Beginning_XNA_3_0_Game_Programming-sample-pdf.acsm?id=9GwrmHRl490C&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"

Pdf pdfFromJson(String str) => Pdf.fromJson(json.decode(str));
String pdfToJson(Pdf data) => json.encode(data.toJson());
class Pdf {
  Pdf({
      this.isAvailable, 
      this.acsTokenLink,});

  Pdf.fromJson(dynamic json) {
    isAvailable = json['isAvailable'];
    acsTokenLink = json['acsTokenLink'];
  }
  bool? isAvailable;
  String? acsTokenLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = isAvailable;
    map['acsTokenLink'] = acsTokenLink;
    return map;
  }

}

/// isAvailable : true
/// acsTokenLink : "http://books.google.com/books/download/Beginning_XNA_3_0_Game_Programming-sample-epub.acsm?id=9GwrmHRl490C&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"

Epub epubFromJson(String str) => Epub.fromJson(json.decode(str));
String epubToJson(Epub data) => json.encode(data.toJson());
class Epub {
  Epub({
      this.isAvailable, 
      this.acsTokenLink,});

  Epub.fromJson(dynamic json) {
    isAvailable = json['isAvailable'];
    acsTokenLink = json['acsTokenLink'];
  }
  bool? isAvailable;
  String? acsTokenLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = isAvailable;
    map['acsTokenLink'] = acsTokenLink;
    return map;
  }

}

/// country : "US"
/// saleability : "NOT_FOR_SALE"
/// isEbook : false

SaleInfo saleInfoFromJson(String str) => SaleInfo.fromJson(json.decode(str));
String saleInfoToJson(SaleInfo data) => json.encode(data.toJson());
class SaleInfo {
  SaleInfo({
      this.country, 
      this.saleability, 
      this.isEbook,});

  SaleInfo.fromJson(dynamic json) {
    country = json['country'];
    saleability = json['saleability'];
    isEbook = json['isEbook'];
  }
  String? country;
  String? saleability;
  bool? isEbook;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = country;
    map['saleability'] = saleability;
    map['isEbook'] = isEbook;
    return map;
  }

}

/// title : "Beginning XNA 3.0 Game Programming"
/// subtitle : "From Novice to Professional"
/// authors : ["Bruno Evangelista","Alexandre Santos Lobao","Riemer Grootjans","Jose ANTONIO LEAL DEFARIAS"]
/// publisher : "Apress"
/// publishedDate : "2009-05-31"
/// description : "Would you like to create your own games, but never have the time to dig into the details of multimedia programming? Now you don't have to! XNA 3.0 makes it simple to create your own games, which will run on your PC and Xbox 360 console. Even if you don't know how to program at all, Beginning XNA 3.0 Game Programming: From Novice to Professional will teach you the basics of C# 2008 programming along the way. Don't get overwhelmed with details you don't need to know—just learn what you need to start creating your own games right now! This fast–paced introduction to XNA 3.0 and the C# language provides you with a quick–start guide to creating high–quality XNA games. You'll be introduced to the key concepts and ideas you need to know in a gradual fashion so that you master one concept before using it as a foundation for the next. Before long, you will have the skills to create smooth, professional–looking results in a range of gaming genres. By the end of the book, you will have constructed several working games and have an excellent knowledge base from which to investigate more advanced techniques."
/// industryIdentifiers : [{"type":"ISBN_13","identifier":"9781430218180"},{"type":"ISBN_10","identifier":"1430218185"}]
/// readingModes : {"text":true,"image":true}
/// pageCount : 437
/// printType : "BOOK"
/// categories : ["Computers"]
/// maturityRating : "NOT_MATURE"
/// allowAnonLogging : false
/// contentVersion : "2.4.3.0.preview.3"
/// panelizationSummary : {"containsEpubBubbles":false,"containsImageBubbles":false}
/// imageLinks : {"smallThumbnail":"http://books.google.com/books/content?id=9GwrmHRl490C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=9GwrmHRl490C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"}
/// language : "en"
/// previewLink : "http://books.google.com/books?id=9GwrmHRl490C&printsec=frontcover&dq=subject:Programming&hl=&cd=1&source=gbs_api"
/// infoLink : "http://books.google.com/books?id=9GwrmHRl490C&dq=subject:Programming&hl=&source=gbs_api"
/// canonicalVolumeLink : "https://books.google.com/books/about/Beginning_XNA_3_0_Game_Programming.html?hl=&id=9GwrmHRl490C"

VolumeInfo volumeInfoFromJson(String str) => VolumeInfo.fromJson(json.decode(str));
String volumeInfoToJson(VolumeInfo data) => json.encode(data.toJson());
class VolumeInfo {
  VolumeInfo({
      this.title, 
      this.subtitle, 
      this.authors, 
      this.publisher, 
      this.publishedDate, 
      this.description, 
      this.industryIdentifiers, 
      this.readingModes, 
      this.pageCount, 
      this.printType, 
      this.categories, 
      this.maturityRating, 
      this.allowAnonLogging, 
      this.contentVersion, 
      this.panelizationSummary, 
      this.imageLinks, 
      this.language, 
      this.previewLink, 
      this.infoLink, 
      this.canonicalVolumeLink,});

  VolumeInfo.fromJson(dynamic json) {
    title = json['title'];
    subtitle = json['subtitle'];
    authors = json['authors'] != null ? json['authors'].cast<String>() : [];
    publisher = json['publisher'];
    publishedDate = json['publishedDate'];
    description = json['description'];
    if (json['industryIdentifiers'] != null) {
      industryIdentifiers = [];
      json['industryIdentifiers'].forEach((v) {
        industryIdentifiers?.add(IndustryIdentifiers.fromJson(v));
      });
    }
    readingModes = json['readingModes'] != null ? ReadingModes.fromJson(json['readingModes']) : null;
    pageCount = json['pageCount'];
    printType = json['printType'];
    categories = json['categories'] != null ? json['categories'].cast<String>() : [];
    maturityRating = json['maturityRating'];
    allowAnonLogging = json['allowAnonLogging'];
    contentVersion = json['contentVersion'];
    panelizationSummary = json['panelizationSummary'] != null ? PanelizationSummary.fromJson(json['panelizationSummary']) : null;
    imageLinks = json['imageLinks'] != null ? ImageLinks.fromJson(json['imageLinks']) : null;
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
  }
  String? title;
  String? subtitle;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifiers>? industryIdentifiers;
  ReadingModes? readingModes;
  num? pageCount;
  String? printType;
  List<String>? categories;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['subtitle'] = subtitle;
    map['authors'] = authors;
    map['publisher'] = publisher;
    map['publishedDate'] = publishedDate;
    map['description'] = description;
    if (industryIdentifiers != null) {
      map['industryIdentifiers'] = industryIdentifiers?.map((v) => v.toJson()).toList();
    }
    if (readingModes != null) {
      map['readingModes'] = readingModes?.toJson();
    }
    map['pageCount'] = pageCount;
    map['printType'] = printType;
    map['categories'] = categories;
    map['maturityRating'] = maturityRating;
    map['allowAnonLogging'] = allowAnonLogging;
    map['contentVersion'] = contentVersion;
    if (panelizationSummary != null) {
      map['panelizationSummary'] = panelizationSummary?.toJson();
    }
    if (imageLinks != null) {
      map['imageLinks'] = imageLinks?.toJson();
    }
    map['language'] = language;
    map['previewLink'] = previewLink;
    map['infoLink'] = infoLink;
    map['canonicalVolumeLink'] = canonicalVolumeLink;
    return map;
  }

}

/// smallThumbnail : "http://books.google.com/books/content?id=9GwrmHRl490C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api"
/// thumbnail : "http://books.google.com/books/content?id=9GwrmHRl490C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"

ImageLinks imageLinksFromJson(String str) => ImageLinks.fromJson(json.decode(str));
String imageLinksToJson(ImageLinks data) => json.encode(data.toJson());
class ImageLinks {
  ImageLinks({
      this.smallThumbnail, 
      this.thumbnail,});

  ImageLinks.fromJson(dynamic json) {
    smallThumbnail = json['smallThumbnail'];
    thumbnail = json['thumbnail'];
  }
  String? smallThumbnail;
  String? thumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['smallThumbnail'] = smallThumbnail;
    map['thumbnail'] = thumbnail;
    return map;
  }

}

/// containsEpubBubbles : false
/// containsImageBubbles : false

PanelizationSummary panelizationSummaryFromJson(String str) => PanelizationSummary.fromJson(json.decode(str));
String panelizationSummaryToJson(PanelizationSummary data) => json.encode(data.toJson());
class PanelizationSummary {
  PanelizationSummary({
      this.containsEpubBubbles, 
      this.containsImageBubbles,});

  PanelizationSummary.fromJson(dynamic json) {
    containsEpubBubbles = json['containsEpubBubbles'];
    containsImageBubbles = json['containsImageBubbles'];
  }
  bool? containsEpubBubbles;
  bool? containsImageBubbles;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['containsEpubBubbles'] = containsEpubBubbles;
    map['containsImageBubbles'] = containsImageBubbles;
    return map;
  }

}

/// text : true
/// image : true

ReadingModes readingModesFromJson(String str) => ReadingModes.fromJson(json.decode(str));
String readingModesToJson(ReadingModes data) => json.encode(data.toJson());
class ReadingModes {
  ReadingModes({
      this.text, 
      this.image,});

  ReadingModes.fromJson(dynamic json) {
    text = json['text'];
    image = json['image'];
  }
  bool? text;
  bool? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = text;
    map['image'] = image;
    return map;
  }

}

/// type : "ISBN_13"
/// identifier : "9781430218180"

IndustryIdentifiers industryIdentifiersFromJson(String str) => IndustryIdentifiers.fromJson(json.decode(str));
String industryIdentifiersToJson(IndustryIdentifiers data) => json.encode(data.toJson());
class IndustryIdentifiers {
  IndustryIdentifiers({
      this.type, 
      this.identifier,});

  IndustryIdentifiers.fromJson(dynamic json) {
    type = json['type'];
    identifier = json['identifier'];
  }
  String? type;
  String? identifier;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['identifier'] = identifier;
    return map;
  }

}