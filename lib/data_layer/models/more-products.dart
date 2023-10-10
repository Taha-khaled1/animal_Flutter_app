class MoreProductModel {
  bool? success;
  String? message;
  int? code;
  List<Data>? data;

  MoreProductModel({this.success, this.message, this.code, this.data});

  MoreProductModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    code = json['code'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  int? categoryId;
  int? brandId;
  String? enProductName;
  String? frProductName;
  String? itemTag;
  String? price;
  String? discount;
  String? discountPrice;
  int? quantity;
  String? sold;
  Null? digitalType;
  Null? digitalLink;
  int? vendorId;
  String? primaryImageUrl;

  Data(
      {this.id,
      this.categoryId,
      this.brandId,
      this.enProductName,
      this.frProductName,
      this.itemTag,
      this.price,
      this.discount,
      this.discountPrice,
      this.quantity,
      this.sold,
      this.digitalType,
      this.digitalLink,
      this.vendorId,
      this.primaryImageUrl});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['Category_Id'];
    brandId = json['Brand_Id'];
    enProductName = json['en_Product_Name'];
    frProductName = json['fr_Product_Name'];
    itemTag = json['ItemTag'];
    price = json['Price'];
    discount = json['Discount'];
    discountPrice = json['Discount_Price'];
    quantity = json['Quantity'];
    sold = json['Sold'];
    digitalType = json['digital_type'];
    digitalLink = json['digital_link'];
    vendorId = json['vendor_id'];
    primaryImageUrl = json['primaryImageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Category_Id'] = this.categoryId;
    data['Brand_Id'] = this.brandId;
    data['en_Product_Name'] = this.enProductName;
    data['fr_Product_Name'] = this.frProductName;
    data['ItemTag'] = this.itemTag;
    data['Price'] = this.price;
    data['Discount'] = this.discount;
    data['Discount_Price'] = this.discountPrice;
    data['Quantity'] = this.quantity;
    data['Sold'] = this.sold;
    data['digital_type'] = this.digitalType;
    data['digital_link'] = this.digitalLink;
    data['vendor_id'] = this.vendorId;
    data['primaryImageUrl'] = this.primaryImageUrl;
    return data;
  }
}
