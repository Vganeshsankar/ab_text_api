class Ledger {
  bool? success;
  Data? data;
  String? message;

  Ledger({this.success, this.data, this.message});

  Ledger.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  int? currentPage;
  List<LedgerData>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Links>? links;
  String? nextPageUrl;
  String? path;
  int? perPage;
  Null? prevPageUrl;
  int? to;
  int? total;

  Data(
      {this.currentPage,
      this.data,
      this.firstPageUrl,
      this.from,
      this.lastPage,
      this.lastPageUrl,
      this.links,
      this.nextPageUrl,
      this.path,
      this.perPage,
      this.prevPageUrl,
      this.to,
      this.total});

  Data.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = <LedgerData>[];
      json['data'].forEach((v) {
        data!.add(new LedgerData.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links!.add(new Links.fromJson(v));
      });
    }
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['first_page_url'] = this.firstPageUrl;
    data['from'] = this.from;
    data['last_page'] = this.lastPage;
    data['last_page_url'] = this.lastPageUrl;
    if (this.links != null) {
      data['links'] = this.links!.map((v) => v.toJson()).toList();
    }
    data['next_page_url'] = this.nextPageUrl;
    data['path'] = this.path;
    data['per_page'] = this.perPage;
    data['prev_page_url'] = this.prevPageUrl;
    data['to'] = this.to;
    data['total'] = this.total;
    return data;
  }
}

class LedgerData {
  int? id;
  String? ledgerName;
  String? shortCode;
  String? isActive;
  String? name;
  String? street;
  int? areaId;
  int? cityId;
  int? stateId;
  int? countryId;
  int? pincode;
  int? transport;
  String? phone;
  String? fax;
  String? mobile;
  String? email;
  String? tinNo;
  String? gstNo;
  String? details;
  String? ledgerRoleId;
  String? linkThrough;
  String? llName;
  String? image;
  int? status;
  String? warpStatus;
  String? yarnStatus;
  String? sareeStatus;
  String? sYarn;
  String? sSaree;
  int? cstNo;
  String? aadharNo;
  int? registration;
  Null? roleWarp;
  Null? roleYarn;
  Null? roleSaree;
  String? createdAt;
  String? updatedAt;
  String? ledgerRoleName;

  LedgerData(
      {this.id,
      this.ledgerName,
      this.shortCode,
      this.isActive,
      this.name,
      this.street,
      this.areaId,
      this.cityId,
      this.stateId,
      this.countryId,
      this.pincode,
      this.transport,
      this.phone,
      this.fax,
      this.mobile,
      this.email,
      this.tinNo,
      this.gstNo,
      this.details,
      this.ledgerRoleId,
      this.linkThrough,
      this.llName,
      this.image,
      this.status,
      this.warpStatus,
      this.yarnStatus,
      this.sareeStatus,
      this.sYarn,
      this.sSaree,
      this.cstNo,
      this.aadharNo,
      this.registration,
      this.roleWarp,
      this.roleYarn,
      this.roleSaree,
      this.createdAt,
      this.updatedAt,
      this.ledgerRoleName});

  LedgerData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ledgerName = json['ledger_name'];
    shortCode = json['short_code'];
    isActive = json['is_active'];
    name = json['name'];
    street = json['street'];
    areaId = json['area_id'];
    cityId = json['city_id'];
    stateId = json['state_id'];
    countryId = json['country_id'];
    pincode = json['pincode'];
    transport = json['transport'];
    phone = json['phone'];
    fax = json['fax'];
    mobile = json['mobile'];
    email = json['email'];
    tinNo = json['tin_no'];
    gstNo = json['gst_no'];
    details = json['details'];
    ledgerRoleId = json['ledger_role_id'];
    linkThrough = json['link_through'];
    llName = json['ll_name'];
    image = json['image'];
    status = json['status'];
    warpStatus = json['warp_status'];
    yarnStatus = json['yarn_status'];
    sareeStatus = json['saree_status'];
    sYarn = json['s_yarn'];
    sSaree = json['s_saree'];
    cstNo = json['cst_no'];
    aadharNo = json['aadhar_no'];
    registration = json['registration'];
    roleWarp = json['role_warp'];
    roleYarn = json['role_yarn'];
    roleSaree = json['role_saree'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    ledgerRoleName = json['ledger_role_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['ledger_name'] = this.ledgerName;
    data['short_code'] = this.shortCode;
    data['is_active'] = this.isActive;
    data['name'] = this.name;
    data['street'] = this.street;
    data['area_id'] = this.areaId;
    data['city_id'] = this.cityId;
    data['state_id'] = this.stateId;
    data['country_id'] = this.countryId;
    data['pincode'] = this.pincode;
    data['transport'] = this.transport;
    data['phone'] = this.phone;
    data['fax'] = this.fax;
    data['mobile'] = this.mobile;
    data['email'] = this.email;
    data['tin_no'] = this.tinNo;
    data['gst_no'] = this.gstNo;
    data['details'] = this.details;
    data['ledger_role_id'] = this.ledgerRoleId;
    data['link_through'] = this.linkThrough;
    data['ll_name'] = this.llName;
    data['image'] = this.image;
    data['status'] = this.status;
    data['warp_status'] = this.warpStatus;
    data['yarn_status'] = this.yarnStatus;
    data['saree_status'] = this.sareeStatus;
    data['s_yarn'] = this.sYarn;
    data['s_saree'] = this.sSaree;
    data['cst_no'] = this.cstNo;
    data['aadhar_no'] = this.aadharNo;
    data['registration'] = this.registration;
    data['role_warp'] = this.roleWarp;
    data['role_yarn'] = this.roleYarn;
    data['role_saree'] = this.roleSaree;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['ledger_role_name'] = this.ledgerRoleName;
    return data;
  }
}

class Links {
  String? url;
  String? label;
  bool? active;

  Links({this.url, this.label, this.active});

  Links.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    label = json['label'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['label'] = this.label;
    data['active'] = this.active;
    return data;
  }
}
