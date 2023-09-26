import 'package:demo/moduel/FirmList_Api.dart';
import 'package:demo/moduel/TwisterColors.dart';
import 'package:demo/sevice/RestClient.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'moduel/Account_Api.dart';
import 'moduel/Ledger.dart';
import 'moduel/LedgerListModel.dart';
import 'moduel/TwisterList_withoutpagenation.dart';
import 'moduel/TwisterList_withpagenation.dart';
import 'moduel/YarnLIst_Api.dart';

void main() => runApp(new MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(child: Container()),
    );
  }

  @override
  void initState() {
    callApi();
  }

  Future<void> callApi() async {
    Dio dio = Dio();
    dio.options.headers["Authorization"] =
        "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxMCIsImp0aSI6IjZlZWM5NzAyZTIwNzRjZTFkZjI4OWQzODY4NzdiNDE2ODE0Mzk5MjY1MjYyNzA2OTYzZjE1ZmJjYWNjMzkyZWU5YTQ1YTI3MzZjMjZjNGFiIiwiaWF0IjoxNjk1NDY3OTc2LjAwNzYzLCJuYmYiOjE2OTU0Njc5NzYuMDA3NjM0LCJleHAiOjE3MTExOTI3NzUuOTkzNTkzLCJzdWIiOiIxNDYiLCJzY29wZXMiOltdfQ.NtdCfwRcVryQtxJO9qGzbfSgNsoCV4PJwQsUjReXcn2A6XFiuVANfE36WwT4cYQ6V-ow81l3AzUmzkIxesIBxS8QW7h8nmwHYQ6FHRizX6MX3wIYtyXlkZh2px4H6pyc8ZCuYofA0DrfjTaCeV_EN9QG-FF-7kRKSLegSFXoWBG1ex8ENKXIByXuh8bMZZSbGavoZGHSTfRsquwUlydnPSeC-Z3On4sOVVjJOLIzf6mUZaxsUrnlU2OYP3IIDvi8xNomxYPHrA04xhv10SQ-BcgPqTTVZMBdXKmJqDMnvnHaYWhCp6p2qy1LuJAHo3Ivm__DlUiidxMA9-lI5LSjZUJM7FBWekevBW-fkt4_LL7qwgrRZfaqWZpCPzP6-Cg5NxFi9w5L77aV5BLB_5lsmpgMVyrzH1STn-Pve11omL5R1z1YiA6Ywcbgo1iIHCGbPsyIPYVuptdsmbf66cPARDyTTzQo8ruN0gddUmIYPHIhGBQt4MHv8dBJ-CszphNRryKcY0jLGx0xe6xz7Hb2CpqPyQnDpotXU9yurCL7L2tNmeacTfJhW-JjrgwxJIuQ_m-b68UBjkNYVGrMygPwE-9bBRrIdODlDBh0trGa51axKvV0lnI433kNwUY3f9kBTzA2B9QnZWztItC7QAcAHAdBu-XFpamaCmxKi0VApDs";
    RestClient restClient = RestClient(dio);
    Ledger response = await restClient.getLiedgerWithPagination();
    print(response.data!.data!.length.toString());
    print("-------------------------------------------------------");

    Future<LedgerListModel> without = restClient.getLiedgerWithoutPagination();
    without.then((value) => print(value.data!.length.toString()));

    Future<TwisterColors> ColorValu = restClient.getTwisterColors();
    ColorValu.then((value) => print(value.data?.length.toString()));

    Future<YarnLIst_Api> yarnlist = restClient.getYarnList();
    yarnlist.then((value) => print(value.data!.length.toString()));

    Future<Account_Api> accountlist = restClient.getAccountList_Api();
    accountlist.then((value) => print(value.data?.length.toString()));

    Future<FirmList_Api> firmlist = restClient.getFirmList_Api();
    firmlist.then((value) => print(value.data?.length.toString()));

    Future<TwisterList_withpagenation> twisterpagenatiln =
        restClient.getTwisterList_Api();
    twisterpagenatiln
        .then((value) => print(value.data?.data?.length.toString()));

    Future<TwisterList_withoutpagenation> twisterwithout =
        restClient.getTwisterList_withoutpagenation();
    twisterwithout.then((value) => print(value.data?.first.accountTypeName));
  }
}
