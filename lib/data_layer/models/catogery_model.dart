class CatoegeryModel {
  bool? success;
  String? message;
  int? code;
  Null? direct;
  List<CatoegeryCardModel>? catoegeryCardModel;

  CatoegeryModel(
      {this.success,
      this.message,
      this.code,
      this.direct,
      this.catoegeryCardModel});

  CatoegeryModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    code = json['code'];
    direct = json['direct'];
    if (json['CatoegeryCardModel'] != null) {
      catoegeryCardModel = <CatoegeryCardModel>[];
      json['CatoegeryCardModel'].forEach((v) {
        catoegeryCardModel!.add(new CatoegeryCardModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    data['code'] = this.code;
    data['direct'] = this.direct;
    if (this.catoegeryCardModel != null) {
      data['CatoegeryCardModel'] =
          this.catoegeryCardModel!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CatoegeryCardModel {
  int? id;
  String? enCategoryName;
  String? frCategoryName;
  String? image;
  String? imageUrl;

  CatoegeryCardModel(
      {this.id,
      this.enCategoryName,
      this.frCategoryName,
      this.image,
      this.imageUrl});

  CatoegeryCardModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    enCategoryName = json['en_Category_Name'];
    frCategoryName = json['fr_Category_Name'];
    image = json['image'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['en_Category_Name'] = this.enCategoryName;
    data['fr_Category_Name'] = this.frCategoryName;
    data['image'] = this.image;
    data['imageUrl'] = this.imageUrl;
    return data;
  }
}
