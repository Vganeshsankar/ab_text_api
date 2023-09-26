import 'package:demo/moduel/Ledger.dart';
import 'package:demo/moduel/TwisterColors.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../moduel/Account_Api.dart';
import '../moduel/FirmList_Api.dart';
import '../moduel/LedgerListModel.dart';
import '../moduel/TwisterList_withoutpagenation.dart';
import '../moduel/TwisterList_withpagenation.dart';
import '../moduel/WarperList_Api.dart';
import '../moduel/YarnLIst_Api.dart';

part 'RestClient.g.dart';

@RestApi(baseUrl: "http://apiabtex.tamilzorous.com/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("api/ledger")
  Future<Ledger> getLiedgerWithPagination();

  @GET("api/ledger/list")
  Future<LedgerListModel> getLiedgerWithoutPagination();

  @GET("api/color/list")
  Future<TwisterColors> getTwisterColors();

  @GET("api/yarn/list")
  Future<YarnLIst_Api> getYarnList();

  @GET("api/rolbasedList")
  Future<WarperList_Api> getWarperList();

  @GET("api/account/list")
  Future<Account_Api> getAccountList_Api();

  @GET("api/firm/list")
  Future<FirmList_Api> getFirmList_Api();

  @GET("api/twister_list_pagination")
  Future<TwisterList_withpagenation> getTwisterList_Api();

  @GET("api/twister_list")
  Future<TwisterList_withoutpagenation> getTwisterList_withoutpagenation();
}
