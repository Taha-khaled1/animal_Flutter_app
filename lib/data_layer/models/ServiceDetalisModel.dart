class ServiceDetalisModel {
  bool? success;
  String? message;
  int? code;
  String? direct;
  Data? data;

  ServiceDetalisModel(
      {this.success, this.message, this.code, this.direct, this.data});

  ServiceDetalisModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    code = json['code'];
    direct = json['direct'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    data['code'] = this.code;
    data['direct'] = this.direct;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? enServiceName;
  String? arServiceName;
  String? startTime;
  String? endTime;
  String? serviceImage;
  String? enDescription;
  String? arDescription;
  int? price;
  String? imageUrl;
  List<String>? images;
  Vendor? vendor;

  Data(
      {this.id,
      this.enServiceName,
      this.arServiceName,
      this.startTime,
      this.endTime,
      this.serviceImage,
      this.enDescription,
      this.arDescription,
      this.price,
      this.imageUrl,
      this.images,
      this.vendor});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    enServiceName = json['en_Service_Name'];
    arServiceName = json['ar_Service_Name'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    serviceImage = json['service_image'];
    enDescription = json['en_Description'];
    arDescription = json['ar_Description'];
    price = json['price'];
    imageUrl = json['image_url'];
    images = json['images'].cast<String>();
    vendor =
        json['vendor'] != null ? new Vendor.fromJson(json['vendor']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['en_Service_Name'] = this.enServiceName;
    data['ar_Service_Name'] = this.arServiceName;
    data['start_time'] = this.startTime;
    data['end_time'] = this.endTime;
    data['service_image'] = this.serviceImage;
    data['en_Description'] = this.enDescription;
    data['ar_Description'] = this.arDescription;
    data['price'] = this.price;
    data['image_url'] = this.imageUrl;
    data['images'] = this.images;
    if (this.vendor != null) {
      data['vendor'] = this.vendor!.toJson();
    }
    return data;
  }
}

class Vendor {
  int? id;
  String? name;
  String? email;
  String? image;
  String? number;
  String? gender;
  String? streetAddress;
  String? about;
  int? isVendor;
  String? deviceToken;
  Null? socialId;
  Null? socialType;
  Null? phone;
  String? openingFrom;
  String? openingTo;
  String? businessName;
  String? address;
  String? profileImage;
  Null? vendorRate;
  List<String>? galleryImages;

  Vendor(
      {this.id,
      this.name,
      this.email,
      this.image,
      this.number,
      this.gender,
      this.streetAddress,
      this.about,
      this.isVendor,
      this.deviceToken,
      this.socialId,
      this.socialType,
      this.phone,
      this.openingFrom,
      this.openingTo,
      this.businessName,
      this.address,
      this.profileImage,
      this.vendorRate,
      this.galleryImages});

  Vendor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    image = json['image'];
    number = json['number'];
    gender = json['gender'];
    streetAddress = json['street_address'];
    about = json['about'];
    isVendor = json['is_vendor'];
    deviceToken = json['device_token'];
    socialId = json['social_id'];
    socialType = json['social_type'];
    phone = json['phone'];
    openingFrom = json['opening_from'];
    openingTo = json['opening_to'];
    businessName = json['business_name'];
    address = json['address'];
    profileImage = json['profile_image'];
    vendorRate = json['vendor_rate'];
    galleryImages = json['gallery_images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['image'] = this.image;
    data['number'] = this.number;
    data['gender'] = this.gender;
    data['street_address'] = this.streetAddress;
    data['about'] = this.about;
    data['is_vendor'] = this.isVendor;
    data['device_token'] = this.deviceToken;
    data['social_id'] = this.socialId;
    data['social_type'] = this.socialType;
    data['phone'] = this.phone;
    data['opening_from'] = this.openingFrom;
    data['opening_to'] = this.openingTo;
    data['business_name'] = this.businessName;
    data['address'] = this.address;
    data['profile_image'] = this.profileImage;
    data['vendor_rate'] = this.vendorRate;
    data['gallery_images'] = this.galleryImages;
    return data;
  }
}
