// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get.dart' as get_x;
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:task_platina_mobile/controllers/language_controller.dart';

enum Method { POST, GET, PUT, DELETE, PATCH }

String BASE_URL = "https://cp.dev.platina.uz/";

class RestClient extends GetxService {
  late Dio _dio;

  //this is for header
  static header() => {
        'Content-Type': 'application/json',
        'X-Platina-Api-Key': 'QdO5hA3D.iSevNc03mulrumyLiPqlcM03M9clZdDQ',
      };

  RestClient init() {
    _dio = Dio(BaseOptions(baseUrl: BASE_URL, headers: header()));
    initInterceptors();
    return this;
  }

  void initInterceptors() {
    _dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      // print('REQUEST[${options.method}] => PATH: ${options.path} '
      //     '=> Request Values: ${options.queryParameters}, => HEADERS: ${options.headers}');
      return handler.next(options);
    }, onResponse: (response, handler) {
      // print('RESPONSE[${response.statusCode}] => DATA: ${response.data}');
      return handler.next(response);
    }, onError: (err, handler) {
      // print('ERROR[${err.response?.statusCode}]');
      return handler.next(err);
    }));
  }

  Future<dynamic> request(String url2, Method method, Map<String, dynamic>? params) async {
    Response response;
    LocalizationController loc = get_x.Get.find();
    String local = '';
    switch (loc.locale.languageCode) {
      case 'ru':
        local = 'uz';
        break;
      case 'en':
        local = 'uz-latn';
        break;
      default:
        local = loc.locale.languageCode;
    }
    String url = '$local/api$url2';
    try {
      if (method == Method.POST) {
        response = await _dio.post(url, data: params);
      } else if (method == Method.DELETE) {
        response = await _dio.delete(url);
      } else if (method == Method.PATCH) {
        response = await _dio.patch(url);
      } else {
        response = await _dio.get(
          url,
          queryParameters: params,
        );
      }

      if (response.statusCode == 200) {
        return response;
      } else if (response.statusCode == 401) {
        throw Exception("Unauthorized");
      } else if (response.statusCode == 500) {
        throw Exception("Server Error");
      } else {
        throw Exception("Something Went Wrong");
      }
    } on SocketException catch (e) {
      throw Exception("No Internet Connection: $e");
    } on FormatException {
      throw Exception("Bad Response Format!");
    } on DioException catch (e) {
      throw Exception(e);
    } catch (e) {
      throw Exception("Something Went Wrong");
    }
  }

  Future<dynamic> searchRequest(String url, Method method, Map<String, dynamic>? params) async {
    Response response;
    Dio dio = Dio();

    try {
      if (method == Method.POST) {
        response = await dio.post(url, data: params);
      } else if (method == Method.DELETE) {
        response = await dio.delete(url);
      } else if (method == Method.PATCH) {
        response = await dio.patch(url);
      } else {
        response = await dio.get(
          url,
          queryParameters: params,
        );
      }

      if (response.statusCode == 200) {
        return response;
      } else if (response.statusCode == 401) {
        throw Exception("Unauthorized");
      } else if (response.statusCode == 500) {
        throw Exception("Server Error");
      } else {
        throw Exception("Something Went Wrong");
      }
    } on SocketException catch (e) {
      throw Exception("No Internet Connection: $e");
    } on FormatException {
      throw Exception("Bad Response Format!");
    } on DioException catch (e) {
      throw Exception(e);
    } catch (e) {
      throw Exception("Something Went Wrong");
    }
  }
}
