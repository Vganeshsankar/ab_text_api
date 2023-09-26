class TwisterList_withpagenation {
  bool? success;
  Data? data;
  String? message;

  TwisterList_withpagenation({this.success, this.data, this.message});

  TwisterList_withpagenation.fromJson(Map<String, dynamic> json) {
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
  List<Data>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Links>? links;
  Null? nextPageUrl;
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
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
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

class TwisterData {
  int? id;
  int? warperId;
  String? lot;
  int? recoredNo;
  int? firm;
  int? wagesAccount;
  String? transactionTyps;
  int? totalDeliverdWeight;
  int? totalReceivedWeight;
  int? totalWages;
  int? toatlCopsOut;
  int? totalCopsIn;
  int? totalReelOut;
  int? totalReelIn;
  String? createdAt;
  String? updatedAt;
  int? status;
  String? ledgerName;
  String? accountTypeName;

  TwisterData(
      {this.id,
      this.warperId,
      this.lot,
      this.recoredNo,
      this.firm,
      this.wagesAccount,
      this.transactionTyps,
      this.totalDeliverdWeight,
      this.totalReceivedWeight,
      this.totalWages,
      this.toatlCopsOut,
      this.totalCopsIn,
      this.totalReelOut,
      this.totalReelIn,
      this.createdAt,
      this.updatedAt,
      this.status,
      this.ledgerName,
      this.accountTypeName});

  TwisterData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    warperId = json['warper_id'];
    lot = json['lot'];
    recoredNo = json['recored_no'];
    firm = json['firm'];
    wagesAccount = json['wages_account'];
    transactionTyps = json['transaction_typs'];
    totalDeliverdWeight = json['total_deliverd_weight'];
    totalReceivedWeight = json['total_received_weight'];
    totalWages = json['total_wages'];
    toatlCopsOut = json['toatl_cops_out'];
    totalCopsIn = json['total_cops_in'];
    totalReelOut = json['total_reel_out'];
    totalReelIn = json['total_reel_in'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    status = json['status'];
    ledgerName = json['ledger_name'];
    accountTypeName = json['account_type_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['warper_id'] = this.warperId;
    data['lot'] = this.lot;
    data['recored_no'] = this.recoredNo;
    data['firm'] = this.firm;
    data['wages_account'] = this.wagesAccount;
    data['transaction_typs'] = this.transactionTyps;
    data['total_deliverd_weight'] = this.totalDeliverdWeight;
    data['total_received_weight'] = this.totalReceivedWeight;
    data['total_wages'] = this.totalWages;
    data['toatl_cops_out'] = this.toatlCopsOut;
    data['total_cops_in'] = this.totalCopsIn;
    data['total_reel_out'] = this.totalReelOut;
    data['total_reel_in'] = this.totalReelIn;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['status'] = this.status;
    data['ledger_name'] = this.ledgerName;
    data['account_type_name'] = this.accountTypeName;
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
