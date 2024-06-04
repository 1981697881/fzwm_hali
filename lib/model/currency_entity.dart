import 'dart:convert';
import 'package:fzwm_hali/server/api.dart';
import 'package:dio/dio.dart';
import 'package:fzwm_hali/http/httpUtils.dart';
import 'package:fzwm_hali/utils/toast_util.dart';
List<List<dynamic>> currencyEntityFromJson(String str) => List<List<dynamic>>.from(json.decode(str).map((x) => List<dynamic>.from(x.map((x) => x))));

String currencyEntityToJson(List<List<dynamic>> data) => json.encode(List<dynamic>.from(data.map((x) => List<dynamic>.from(x.map((x) => x)))));

class CurrencyEntity {
  static Future<String> polling(
      Map<String, dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.post(await api.CURRENCY_URL(), data: map);
      return jsonEncode(response);
    } on DioError catch (e) {
      Map<String, dynamic> Model = Map();
      Model['success'] = false;
      Model['msg'] = e.error.toString();
      return jsonEncode(Model);
    }
  }static Future<String> pollingInv(
      Map<String, dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.post(await api.CURRENCY_INVURL());
      return jsonEncode(response);
    } on DioError catch (e) {
      Map<String, dynamic> Model = Map();
      Model['success'] = false;
      Model['msg'] = e.error.toString();
      return jsonEncode(Model);
    }
  }static Future<String> pollingInvList(
      Map<String, dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.post(await api.CURRENCY_INVLIST(), params: map);
      return jsonEncode(response);
    } on DioError catch (e) {
      Map<String, dynamic> Model = Map();
      Model['success'] = false;
      Model['msg'] = e.error.toString();
      return jsonEncode(Model);
    }
  }
  static Future<String> getInventory(
      Map<String, dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.post(await api.INVENTORY_URL(), data: map);
      return jsonEncode(response);
    } on DioError catch (e) {
      Map<String, dynamic> Model = Map();
      Model['success'] = false;
      Model['msg'] = e.error.toString();
      return jsonEncode(Model);
    }
  }static Future<String> getScanBarcode(
      Map<String, dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.post(await api.SCAN_BARCODE(), params: map);
      return jsonEncode(response);
    } on DioError catch (e) {
      Map<String, dynamic> Model = Map();
      Model['success'] = false;
      Model['msg'] = e.error.toString();
      return jsonEncode(Model);
    }
  }static Future<String> getScanInventory(
      Map<String, dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.get(await api.SCANINVENTORY_URL(), params: map);
      return jsonEncode(response);
    } on DioError catch (e) {
      Map<String, dynamic> Model = Map();
      Model['success'] = false;
      Model['msg'] = e.error.toString();
      return jsonEncode(Model);
    }
  }static Future<String> getUuidInventory(
      Map<String, dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.get(await api.SCAN_INVBARCODE(), params: map);
      return jsonEncode(response);
    } on DioError catch (e) {
      Map<String, dynamic> Model = Map();
      Model['success'] = false;
      Model['msg'] = e.error.toString();
      return jsonEncode(Model);
    }
  }static Future<String> getDept(
      Map<String, dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.post(await api.DEPT_URL(), data: map);
      return jsonEncode(response);
    } on DioError catch (e) {
      Map<String, dynamic> Model = Map();
      Model['success'] = false;
      Model['msg'] = e.error.toString();
      return jsonEncode(Model);
    }
  }static Future<String> getStock(
      Map<String, dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.post(await api.STOCK_URL(), data: map);
      return jsonEncode(response);
    } on DioError catch (e) {
      Map<String, dynamic> Model = Map();
      Model['success'] = false;
      Model['msg'] = e.error.toString();
      return jsonEncode(Model);
    }
  }static Future<String> getCustomer(
      Map<String, dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.post(await api.CUSTOMER_URL(), data: map);
      return jsonEncode(response);
    } on DioError catch (e) {
      Map<String, dynamic> Model = Map();
      Model['success'] = false;
      Model['msg'] = e.error.toString();
      return jsonEncode(Model);
    }
  }static Future<String> getSupplier(
      Map<String, dynamic> map) async {
    try {
      API api = new API();
      final response = await HttpUtils.post(await api.SUPPLIER_URL(), data: map);
      return jsonEncode(response);
    } on DioError catch (e) {
      Map<String, dynamic> Model = Map();
      Model['success'] = false;
      Model['msg'] = e.error.toString();
      return jsonEncode(Model);
    }
  }static Future<String> getBillNo(
     String value) async {
    try {
      API api = new API();
      final response = await HttpUtils.get(await api.ORDERNO_URL()+"?TranType="+value);
      return jsonEncode(response);
    } on DioError catch (e) {
      Map<String, dynamic> Model = Map();
      Model['success'] = false;
      Model['msg'] = e.error.toString();
      return jsonEncode(Model);
    }
  }
}