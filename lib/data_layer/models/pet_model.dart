class PetModel {
  bool? success;
  String? message;
  int? code;
  Data? data;

  PetModel({this.success, this.message, this.code, this.data});

  PetModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    code = json['code'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  int? vendorId;
  int? petCategoryId;
  String? titleAr;
  String? titleEn;
  int? price;
  String? gender;
  String? age;
  String? weight;
  String? descriptionAr;
  String? descriptionEn;
  String? featuredImage;
  List<String>? galleryImage;
  bool? isAddedToFavorites;
  Vendor? vendor;

  Data(
      {this.id,
      this.vendorId,
      this.petCategoryId,
      this.titleAr,
      this.titleEn,
      this.price,
      this.gender,
      this.age,
      this.weight,
      this.descriptionAr,
      this.descriptionEn,
      this.featuredImage,
      this.galleryImage,
      this.isAddedToFavorites,
      this.vendor});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    vendorId = json['vendor_id'];
    petCategoryId = json['pet_category_id'];
    titleAr = json['title_ar'];
    titleEn = json['title_en'];
    price = json['price'];
    gender = json['gender'];
    age = json['age'];
    weight = json['weight'];
    descriptionAr = json['description_ar'];
    descriptionEn = json['description_en'];
    featuredImage = json['featured_image'];
    galleryImage = json['gallery_image'].cast<String>();
    isAddedToFavorites = json['is_added_to_favorites'];
    vendor =
        json['vendor'] != null ? new Vendor.fromJson(json['vendor']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['vendor_id'] = this.vendorId;
    data['pet_category_id'] = this.petCategoryId;
    data['title_ar'] = this.titleAr;
    data['title_en'] = this.titleEn;
    data['price'] = this.price;
    data['gender'] = this.gender;
    data['age'] = this.age;
    data['weight'] = this.weight;
    data['description_ar'] = this.descriptionAr;
    data['description_en'] = this.descriptionEn;
    data['featured_image'] = this.featuredImage;
    data['gallery_image'] = this.galleryImage;
    data['is_added_to_favorites'] = this.isAddedToFavorites;
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
  String? dOB;
  String? streetAddress;
  String? about;
  int? isAdmin;
  String? phone;
  String? openingFrom;
  String? openingTo;
  String? businessName;
  String? address;
  String? profileImage;
  double? vendorRate;
  List<String>? galleryImages;

  Vendor(
      {this.id,
      this.name,
      this.email,
      this.image,
      this.number,
      this.gender,
      this.dOB,
      this.streetAddress,
      this.about,
      this.isAdmin,
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
    number = json['Number'];
    gender = json['Gender'];
    dOB = json['DOB'];
    streetAddress = json['street_address'];
    about = json['About'];
    isAdmin = json['is_admin'];
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
    data['Number'] = this.number;
    data['Gender'] = this.gender;
    data['DOB'] = this.dOB;
    data['street_address'] = this.streetAddress;
    data['About'] = this.about;
    data['is_admin'] = this.isAdmin;
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
