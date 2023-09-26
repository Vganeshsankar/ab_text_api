class TwisterList_withoutpagenation {
  bool? success;
  List<Data>? data;
  String? message;

  TwisterList_withoutpagenation({this.success, this.data, this.message});

  TwisterList_withoutpagenation.fromJson(Map<String, dynamic> json) {
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

  Data(
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

  Data.fromJson(Map<String, dynamic> json) {
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
