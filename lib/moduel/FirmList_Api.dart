class FirmList_Api {
  bool? success;
  List<Data>? data;
  String? message;

  FirmList_Api({this.success, this.data, this.message});

  FirmList_Api.fromJson(Map<String, dynamic> json) {
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
  String? firstName;
  String? shortCode;
  String? street;
  int? areaId;
  Null? cityId;
  Null? stateId;
  Null? countryId;
  Null? pincode;
  String? phone;
  String? fax;
  String? mobile;
  String? email;
  String? web;
  String? bussinessType;
  String? gstNo;
  String? tinNo;
  String? jurisdiction;
  String? iacNo;
  String? bankName;
  String? ifscCode;
  String? bankAccountNo;
  String? logo;
  int? status;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.firstName,
      this.shortCode,
      this.street,
      this.areaId,
      this.cityId,
      this.stateId,
      this.countryId,
      this.pincode,
      this.phone,
      this.fax,
      this.mobile,
      this.email,
      this.web,
      this.bussinessType,
      this.gstNo,
      this.tinNo,
      this.jurisdiction,
      this.iacNo,
      this.bankName,
      this.ifscCode,
      this.bankAccountNo,
      this.logo,
      this.status,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    shortCode = json['short_code'];
    street = json['street'];
    areaId = json['area_id'];
    cityId = json['city_id'];
    stateId = json['state_id'];
    countryId = json['country_id'];
    pincode = json['pincode'];
    phone = json['phone'];
    fax = json['fax'];
    mobile = json['mobile'];
    email = json['email'];
    web = json['web'];
    bussinessType = json['bussiness_type'];
    gstNo = json['gst_no'];
    tinNo = json['tin_no'];
    jurisdiction = json['jurisdiction'];
    iacNo = json['iac_no'];
    bankName = json['bank_name'];
    ifscCode = json['ifsc_code'];
    bankAccountNo = json['bank_account_no'];
    logo = json['logo'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['short_code'] = this.shortCode;
    data['street'] = this.street;
    data['area_id'] = this.areaId;
    data['city_id'] = this.cityId;
    data['state_id'] = this.stateId;
    data['country_id'] = this.countryId;
    data['pincode'] = this.pincode;
    data['phone'] = this.phone;
    data['fax'] = this.fax;
    data['mobile'] = this.mobile;
    data['email'] = this.email;
    data['web'] = this.web;
    data['bussiness_type'] = this.bussinessType;
    data['gst_no'] = this.gstNo;
    data['tin_no'] = this.tinNo;
    data['jurisdiction'] = this.jurisdiction;
    data['iac_no'] = this.iacNo;
    data['bank_name'] = this.bankName;
    data['ifsc_code'] = this.ifscCode;
    data['bank_account_no'] = this.bankAccountNo;
    data['logo'] = this.logo;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
