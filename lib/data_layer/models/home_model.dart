class HomeModel {
  bool? success;
  String? message;
  int? code;
  Null? direct;
  Data? data;

  HomeModel({this.success, this.message, this.code, this.direct, this.data});

  HomeModel.fromJson(Map<String, dynamic> json) {
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
  List<PetCategories>? petCategories;
  List<Pets>? pets;
  List<Banners>? banners;
  List<Vendors>? vendors;
  List<Services>? services;
  List<Products>? products;

  Data(
      {this.petCategories,
      this.pets,
      this.banners,
      this.vendors,
      this.services,
      this.products});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['pet_categories'] != null) {
      petCategories = <PetCategories>[];
      json['pet_categories'].forEach((v) {
        petCategories!.add(new PetCategories.fromJson(v));
      });
    }
    if (json['pets'] != null) {
      pets = <Pets>[];
      json['pets'].forEach((v) {
        pets!.add(new Pets.fromJson(v));
      });
    }
    if (json['banners'] != null) {
      banners = <Banners>[];
      json['banners'].forEach((v) {
        banners!.add(new Banners.fromJson(v));
      });
    }
    if (json['vendors'] != null) {
      vendors = <Vendors>[];
      json['vendors'].forEach((v) {
        vendors!.add(new Vendors.fromJson(v));
      });
    }
    if (json['services'] != null) {
      services = <Services>[];
      json['services'].forEach((v) {
        services!.add(new Services.fromJson(v));
      });
    }
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.petCategories != null) {
      data['pet_categories'] =
          this.petCategories!.map((v) => v.toJson()).toList();
    }
    if (this.pets != null) {
      data['pets'] = this.pets!.map((v) => v.toJson()).toList();
    }
    if (this.banners != null) {
      data['banners'] = this.banners!.map((v) => v.toJson()).toList();
    }
    if (this.vendors != null) {
      data['vendors'] = this.vendors!.map((v) => v.toJson()).toList();
    }
    if (this.services != null) {
      data['services'] = this.services!.map((v) => v.toJson()).toList();
    }
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PetCategories {
  int? id;
  String? titleAr;
  String? titleEn;
  int? status;
  int? vendorId;
  String? createdAt;
  String? updatedAt;
  String? icon;

  PetCategories(
      {this.id,
      this.titleAr,
      this.titleEn,
      this.status,
      this.vendorId,
      this.createdAt,
      this.updatedAt,
      this.icon});

  PetCategories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    titleAr = json['title_ar'];
    titleEn = json['title_en'];
    status = json['status'];
    vendorId = json['vendor_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title_ar'] = this.titleAr;
    data['title_en'] = this.titleEn;
    data['status'] = this.status;
    data['vendor_id'] = this.vendorId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['icon'] = this.icon;
    return data;
  }
}

class Pets {
  int? id;
  String? titleAr;
  String? titleEn;
  int? price;
  String? featuredImage;

  Pets({this.id, this.titleAr, this.titleEn, this.price, this.featuredImage});

  Pets.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    titleAr = json['title_ar'];
    titleEn = json['title_en'];
    price = json['price'];
    featuredImage = json['featured_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title_ar'] = this.titleAr;
    data['title_en'] = this.titleEn;
    data['price'] = this.price;
    data['featured_image'] = this.featuredImage;
    return data;
  }
}

class Banners {
  int? id;
  String? image;
  String? enTitle;
  String? enSummary;
  String? frTitle;
  String? frSummary;
  String? bannerFullImageUrl;

  Banners(
      {this.id,
      this.image,
      this.enTitle,
      this.enSummary,
      this.frTitle,
      this.frSummary,
      this.bannerFullImageUrl});

  Banners.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    enTitle = json['en_title'];
    enSummary = json['en_summary'];
    frTitle = json['fr_title'];
    frSummary = json['fr_summary'];
    bannerFullImageUrl = json['banner_full_image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['en_title'] = this.enTitle;
    data['en_summary'] = this.enSummary;
    data['fr_title'] = this.frTitle;
    data['fr_summary'] = this.frSummary;
    data['banner_full_image_url'] = this.bannerFullImageUrl;
    return data;
  }
}

class Vendors {
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
  String? openingFrom;
  String? openingTo;
  String? businessName;
  String? address;
  String? profileImage;
  int? unreadNotificationCount;
  Null? vendorRate;

  Vendors(
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
      this.openingFrom,
      this.openingTo,
      this.businessName,
      this.address,
      this.profileImage,
      this.unreadNotificationCount,
      this.vendorRate});

  Vendors.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    image = json['image'];
    number = json['Number'];
    gender = json['Gender'];
    streetAddress = json['street_address'];
    about = json['About'];
    isVendor = json['is_vendor'];
    deviceToken = json['device_token'];
    openingFrom = json['opening_from'];
    openingTo = json['opening_to'];
    businessName = json['business_name'];
    address = json['address'];
    profileImage = json['profile_image'];
    unreadNotificationCount = json['unread_notification_count'];
    vendorRate = json['vendor_rate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['image'] = this.image;
    data['Number'] = this.number;
    data['Gender'] = this.gender;
    data['street_address'] = this.streetAddress;
    data['About'] = this.about;
    data['is_vendor'] = this.isVendor;
    data['device_token'] = this.deviceToken;
    data['opening_from'] = this.openingFrom;
    data['opening_to'] = this.openingTo;
    data['business_name'] = this.businessName;
    data['address'] = this.address;
    data['profile_image'] = this.profileImage;
    data['unread_notification_count'] = this.unreadNotificationCount;
    data['vendor_rate'] = this.vendorRate;
    return data;
  }
}

class Services {
  int? id;
  String? enServiceName;
  String? arServiceName;
  String? startData;
  String? endData;
  String? serviceImage;
  int? price;
  String? imageUrl;

  Services(
      {this.id,
      this.enServiceName,
      this.arServiceName,
      this.startData,
      this.endData,
      this.serviceImage,
      this.price,
      this.imageUrl});

  Services.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    enServiceName = json['en_Service_Name'];
    arServiceName = json['ar_Service_Name'];
    startData = json['start_data'];
    endData = json['end_data'];
    serviceImage = json['Service_image'];
    price = json['price'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['en_Service_Name'] = this.enServiceName;
    data['ar_Service_Name'] = this.arServiceName;
    data['start_data'] = this.startData;
    data['end_data'] = this.endData;
    data['Service_image'] = this.serviceImage;
    data['price'] = this.price;
    data['image_url'] = this.imageUrl;
    return data;
  }
}

class Products {
  int? id;
  String? enProductName;
  String? frProductName;
  String? price;
  String? discount;
  String? discountPrice;
  int? quantity;
  String? sold;
  String? primaryImage;
  int? featuredProduct;
  int? bestSelling;
  int? newArrival;
  int? onSale;

  Products(
      {this.id,
      this.enProductName,
      this.frProductName,
      this.price,
      this.discount,
      this.discountPrice,
      this.quantity,
      this.sold,
      this.primaryImage,
      this.featuredProduct,
      this.bestSelling,
      this.newArrival,
      this.onSale});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    enProductName = json['en_Product_Name'];
    frProductName = json['fr_Product_Name'];
    price = json['Price'];
    discount = json['Discount'];
    discountPrice = json['Discount_Price'];
    quantity = json['Quantity'];
    sold = json['Sold'];
    primaryImage = json['Primary_Image'];
    featuredProduct = json['Featured_Product'];
    bestSelling = json['Best_Selling'];
    newArrival = json['New_Arrival'];
    onSale = json['On_Sale'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['en_Product_Name'] = this.enProductName;
    data['fr_Product_Name'] = this.frProductName;
    data['Price'] = this.price;
    data['Discount'] = this.discount;
    data['Discount_Price'] = this.discountPrice;
    data['Quantity'] = this.quantity;
    data['Sold'] = this.sold;
    data['Primary_Image'] = this.primaryImage;
    data['Featured_Product'] = this.featuredProduct;
    data['Best_Selling'] = this.bestSelling;
    data['New_Arrival'] = this.newArrival;
    data['On_Sale'] = this.onSale;
    return data;
  }
}
