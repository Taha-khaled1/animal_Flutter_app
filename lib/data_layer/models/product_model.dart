class Product {
  final bool success;
  final String message;
  final int code;
  final dynamic direct;
  final ProductData data;

  Product({
    required this.success,
    required this.message,
    required this.code,
    required this.direct,
    required this.data,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      success: json['success'] ?? false,
      message: json['message'] ?? '',
      code: json['code'] ?? 0,
      direct: json['direct'],
      data: ProductData.fromJson(json['data'] ?? {}),
    );
  }
}

class ProductData {
  final int id;
  final String enProductName;
  final String frProductName;
  final String enProductSlug;
  final String frProductSlug;
  final String enAbout;
  final String frAbout;
  final String itemTag;
  final String price;
  final String discount;
  final String discountPrice;
  final int quantity;
  final String sold;
  final String primaryImage;
  final String image2;
  final String image3;
  final String image4;
  final String image5;
  final int featuredProduct;
  final int bestSelling;
  final int newArrival;
  final int onSale;
  final String enDescription;
  final String frDescription;
  final int vendorId;
  final String primaryImageUrl;
  final String secondImageUrl;
  final String thirdImageUrl;
  final String forthImageUrl;
  final String fifthImageUrl;
  final List<String> images;
  final Vendor vendor;
  final List<Color> colors;
  final List<Size> sizes;

  ProductData({
    required this.id,
    required this.enProductName,
    required this.frProductName,
    required this.enProductSlug,
    required this.frProductSlug,
    required this.enAbout,
    required this.frAbout,
    required this.itemTag,
    required this.price,
    required this.discount,
    required this.discountPrice,
    required this.quantity,
    required this.sold,
    required this.primaryImage,
    required this.image2,
    required this.image3,
    required this.image4,
    required this.image5,
    required this.featuredProduct,
    required this.bestSelling,
    required this.newArrival,
    required this.onSale,
    required this.enDescription,
    required this.frDescription,
    required this.vendorId,
    required this.primaryImageUrl,
    required this.secondImageUrl,
    required this.thirdImageUrl,
    required this.forthImageUrl,
    required this.fifthImageUrl,
    required this.images,
    required this.vendor,
    required this.colors,
    required this.sizes,
  });

  factory ProductData.fromJson(Map<String, dynamic> json) {
    // Parse the colors list
    final List<Color> parsedColors = (json['colors'] as List? ?? [])
        .map((color) => Color.fromJson(color ?? {}))
        .toList();

    // Parse the sizes list
    final List<Size> parsedSizes = (json['sizes'] as List? ?? [])
        .map((size) => Size.fromJson(size ?? {}))
        .toList();

    // Parse the images list
    final List<String> parsedImages = (json['images'] as List? ?? [])
        .map((image) => image.toString())
        .toList();

    return ProductData(
      id: json['id'] ?? 0,
      enProductName: json['en_Product_Name'] ?? '',
      frProductName: json['fr_Product_Name'] ?? '',
      enProductSlug: json['en_Product_Slug'] ?? '',
      frProductSlug: json['fr_Product_Slug'] ?? '',
      enAbout: json['en_About'] ?? '',
      frAbout: json['fr_About'] ?? '',
      itemTag: json['ItemTag'] ?? '',
      price: json['Price'] ?? '',
      discount: json['Discount'] ?? '',
      discountPrice: json['Discount_Price'] ?? '',
      quantity: json['Quantity'] ?? 0,
      sold: json['Sold'] ?? '',
      primaryImage: json['Primary_Image'] ?? '',
      image2: json['Image2'] ?? '',
      image3: json['Image3'] ?? '',
      image4: json['Image4'] ?? '',
      image5: json['Image5'] ?? '',
      featuredProduct: json['Featured_Product'] ?? 0,
      bestSelling: json['Best_Selling'] ?? 0,
      newArrival: json['New_Arrival'] ?? 0,
      onSale: json['On_Sale'] ?? 0,
      enDescription: json['en_Description'] ?? '',
      frDescription: json['fr_Description'] ?? '',
      vendorId: json['vendor_id'] ?? 0,
      primaryImageUrl: json['primaryImageUrl'] ?? '',
      secondImageUrl: json['secondImageUrl'] ?? '',
      thirdImageUrl: json['thirdImageUrl'] ?? '',
      forthImageUrl: json['forthImageUrl'] ?? '',
      fifthImageUrl: json['fifthImageUrl'] ?? '',
      images: parsedImages,
      vendor: Vendor.fromJson(json['vendor'] ?? {}),
      colors: parsedColors,
      sizes: parsedSizes,
    );
  }
}

class Vendor {
  final int id;
  final String name;
  final String email;
  final dynamic googleId;
  final dynamic facebookId;
  final String image;
  final String number;
  final String gender;
  final String streetAddress;
  final String about;
  final dynamic phone;
  final String openingFrom;
  final String openingTo;
  final String businessName;
  final String address;
  final String profileImage;

  Vendor({
    required this.id,
    required this.name,
    required this.email,
    required this.googleId,
    required this.facebookId,
    required this.image,
    required this.number,
    required this.gender,
    required this.streetAddress,
    required this.about,
    required this.phone,
    required this.openingFrom,
    required this.openingTo,
    required this.businessName,
    required this.address,
    required this.profileImage,
  });

  factory Vendor.fromJson(Map<String, dynamic> json) {
    return Vendor(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      googleId: json['google_id'],
      facebookId: json['facebook_id'],
      image: json['image'] ?? '',
      number: json['Number'] ?? '',
      gender: json['Gender'] ?? '',
      streetAddress: json['street_address'] ?? '',
      about: json['About'] ?? '',
      phone: json['phone'],
      openingFrom: json['opening_from'] ?? '',
      openingTo: json['opening_to'] ?? '',
      businessName: json['business_name'] ?? '',
      address: json['address'] ?? '',
      profileImage: json['profile_image'] ?? '',
    );
  }
}

class Color {
  final int id;
  final String name;
  final String colorCode;
  final String createdAt;
  final String updatedAt;

  Color({
    required this.id,
    required this.name,
    required this.colorCode,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Color.fromJson(Map<String, dynamic> json) {
    return Color(
      id: json['id'] ?? 0,
      name: json['Name'] ?? '',
      colorCode: json['ColorCode'] ?? '',
      createdAt: json['created_at'] ?? '',
      updatedAt: json['updated_at'] ?? '',
    );
  }
}

class Size {
  final int id;
  final String size;
  final String createdAt;
  final String updatedAt;

  Size({
    required this.id,
    required this.size,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Size.fromJson(Map<String, dynamic> json) {
    return Size(
      id: json['id'] ?? 0,
      size: json['Size'] ?? '',
      createdAt: json['created_at'] ?? '',
      updatedAt: json['updated_at'] ?? '',
    );
  }
}
