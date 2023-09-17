class ServiceModel {
  bool? success;
  String? message;
  int? code;
  Null? direct;
  List<ServiceCardModel>? serviceCardModel;

  ServiceModel(
      {this.success,
      this.message,
      this.code,
      this.direct,
      this.serviceCardModel});

  ServiceModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    code = json['code'];
    direct = json['direct'];
    if (json['data'] != null) {
      serviceCardModel = <ServiceCardModel>[];
      json['data'].forEach((v) {
        serviceCardModel!.add(new ServiceCardModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    data['code'] = this.code;
    data['direct'] = this.direct;
    if (this.serviceCardModel != null) {
      data['data'] = this.serviceCardModel!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ServiceCardModel {
  int? id;
  String? enServiceName;
  String? arServiceName;
  String? serviceImage;
  String? imageUrl;

  ServiceCardModel(
      {this.id,
      this.enServiceName,
      this.arServiceName,
      this.serviceImage,
      this.imageUrl});

  ServiceCardModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    enServiceName = json['en_Service_Name'];
    arServiceName = json['ar_Service_Name'];
    serviceImage = json['Service_image'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['en_Service_Name'] = this.enServiceName;
    data['ar_Service_Name'] = this.arServiceName;
    data['Service_image'] = this.serviceImage;
    data['image_url'] = this.imageUrl;
    return data;
  }
}
