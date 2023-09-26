class YarnLIst_Api {
  bool? success;
  List<Data>? data;
  String? message;

  YarnLIst_Api({this.success, this.data, this.message});

  YarnLIst_Api.fromJson(Map<String, dynamic> json) {
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
  int? measurementUnitId;
  int? threadTypeId;
  int? netWeight;
  int? status;
  String? createdAt;
  String? updatedAt;
  String? details;
  String? llName;
  String? isActive;
  String? unitWeight;

  Data(
      {this.id,
      this.name,
      this.measurementUnitId,
      this.threadTypeId,
      this.netWeight,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.details,
      this.llName,
      this.isActive,
      this.unitWeight});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    measurementUnitId = json['measurement_unit_id'];
    threadTypeId = json['thread_type_id'];
    netWeight = json['net_weight'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    details = json['details'];
    llName = json['ll_name'];
    isActive = json['is_active'];
    unitWeight = json['unit_weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['measurement_unit_id'] = this.measurementUnitId;
    data['thread_type_id'] = this.threadTypeId;
    data['net_weight'] = this.netWeight;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['details'] = this.details;
    data['ll_name'] = this.llName;
    data['is_active'] = this.isActive;
    data['unit_weight'] = this.unitWeight;
    return data;
  }
}
