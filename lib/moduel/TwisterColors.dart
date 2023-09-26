class TwisterColors {
  bool? success;
  List<Data>? data;
  String? message;

  TwisterColors({this.success, this.data, this.message});

  TwisterColors.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  int? id;
  String? name;
  int? status;
  String? createdAt;
  String? updatedAt;
  String? llName;
  String? isActive;

  Data(
      {this.id,
      this.name,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.llName,
      this.isActive});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    llName = json['ll_name'];
    isActive = json['is_active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['ll_name'] = this.llName;
    data['is_active'] = this.isActive;
    return data;
  }
}
