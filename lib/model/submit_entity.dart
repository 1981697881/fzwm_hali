import 'dart:convert';
import 'package:fzwm_hali/server/api.dart';
import 'package:dio/dio.dart';
import 'package:fzwm_hali/http/httpUtils.dart';
import 'package:fzwm_hali/utils/toast_util.dart';
List<List<dynamic>> submitEntityFromJson(String str) => List<List<dynamic>>.from(json.decode(str).map((x) => List<dynamic>.from(x.map((x) => x))));

String submitEntityToJson(List<List<dynamic>> data) => json.encode(List<dynamic>.from(data.map((x) => List<dynamic>.from(x.map((x) => x)))));

class SubmitEntity {
  static Future<String> permissions(String value) async {
    try {
      API api = new API();
      final response = await HttpUtils.post(await api.PERMISSION_URL()+"/"+value);
      return jsonEncode(response);
    } on DioError catch (e) {
      Map<String, dynamic> Model = Map();
      Model['success'] = false;
      Model['msg'] = e.error.toString();
      return jsonEncode(Model);
    }
  }
  static  Future<List<Response>> dblSubmit(
      String map1,String map2) async {
    try {
      API api = new API();
      final response = await HttpUtils.dblPost(await api.SUBMIT_URL(),await api.SUBMIT_URL(), data1: map1,data2: map2);
      return response;
    } on DioError catch (e) {
      return e.error;
    }
  }
  static Future<String> save(
      Map<String, dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.post(await api.SAVE_URL(), data: map);
      return response;
    } on DioError catch (e) {
      print(e);
      return e.error;
    }
  }
  static Future<String> savePurchase(
      Map<String, dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.post(await api.SAVE_PURCHASE(), data: map);
      return jsonEncode(response);
    } on DioError catch (e) {
      Map<String, dynamic> Model = Map();
      Model['success'] = false;
      Model['msg'] = e.error.toString();
      return jsonEncode(Model);
    }
  }static Future<String> saveSales(
      Map<String, dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.post(await api.SAVE_SALES(), data: map);
      return jsonEncode(response);
    } on DioError catch (e) {
      Map<String, dynamic> Model = Map();
      Model['success'] = false;
      Model['msg'] = e.error.toString();
      return jsonEncode(Model);
    }
  }static Future<String> saveProduct(
      Map<String, dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.post(await api.SAVE_PRODUCT(), data: map);
      return jsonEncode(response);
    } on DioError catch (e) {
      Map<String, dynamic> Model = Map();
      Model['success'] = false;
      Model['msg'] = e.error.toString();
      return jsonEncode(Model);
    }
  }static Future<String> savePicking(
      Map<String, dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.post(await api.SAVE_PICKING(), data: map);
      return jsonEncode(response);
    } on DioError catch (e) {
      Map<String, dynamic> Model = Map();
      Model['success'] = false;
      Model['msg'] = e.error.toString();
      return jsonEncode(Model);
    }
  }static Future<String> saveTrans(
      Map<String, dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.post(await api.SAVE_TRANS(), data: map);
      return jsonEncode(response);
    } on DioError catch (e) {
      Map<String, dynamic> Model = Map();
      Model['success'] = false;
      Model['msg'] = e.error.toString();
      return jsonEncode(Model);
    }
  }static Future<String> saveStockIn(
      Map<String, dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.post(await api.SAVE_STOCKIN(), data: map);
      return jsonEncode(response);
    } on DioError catch (e) {
      Map<String, dynamic> Model = Map();
      Model['success'] = false;
      Model['msg'] = e.error.toString();
      return jsonEncode(Model);
    }
  }static Future<String> saveStockOut(
      Map<String, dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.post(await api.SAVE_STOCKOUT(), data: map);
      return jsonEncode(response);
    } on DioError catch (e) {
      Map<String, dynamic> Model = Map();
      Model['success'] = false;
      Model['msg'] = e.error.toString();
      return jsonEncode(Model);
    }
  }static Future<String> saveInv(
  List<dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.post(await api.INV_CHECK(), data: map);
      return jsonEncode(response);
    } on DioError catch (e) {
      Map<String, dynamic> Model = Map();
      Model['success'] = false;
      Model['msg'] = e.error.toString();
      return jsonEncode(Model);
    }
  }
  static Future<String> submit(
      Map<String, dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.post(await api.SUBMIT_URL(), data: map);
      return response;
    } on DioError catch (e) {
      print(e);
      return e.error;
    }
  }
  /* static Future<String> pushDown(
      List<Object> map) async {
    try {
      final response = await HttpUtils.post(API.DOWN_URL, data: map);
      return response;
    } on DioError catch (e) {
      return e.error;
    }
  }*/
  static  Future<List<Response>> dalPushDown(
      Map<String, dynamic> map1,Map<String, dynamic> map2) async {
    try {
      API api = new API();
      final response = await HttpUtils.dblPost(await api.DOWN_URL(),await api.DOWN_URL(),data1: map1,data2: map2);
      return response;
    } on DioError catch (e) {
      return e.error;
    }
  }
  static Future<String> pushDown(
      Map<String, dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.post(await api.DOWN_URL(), data: map);
      return response;
    } on DioError catch (e) {
      return e.error;
    }
  }
  static Future<String> alterStatus(
      Map<String, dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.post(await api.STATUS_URL(), data: map);
      return response;
    } on DioError catch (e) {
      return e.error;
    }
  }
  static Future<String> audit(
      Map<String, dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.post(await api.AUDIT_URL(), data: map);
      return response;
    } on DioError catch (e) {
      return e.error;
    }
  }static Future<String> unAudit(
      Map<String, dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.post(await api.UNAUDIT_URL(), data: map);
      return response;
    } on DioError catch (e) {
      return e.error;
    }
  }static Future<String> delete(
      Map<String, dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.post(await api.DELETE_URL(), data: map);
      return response;
    } on DioError catch (e) {
      return e.error;
    }
  }
}