import 'package:dio/dio.dart';
import 'package:flutter/material.dart';



class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Ajouter des en-têtes ou des paramètres à la requête
    options.headers['Authorization'] = 'Bearer YOUR_ACCESS_TOKEN';
    debugPrint('REQUEST[${options.method}] => PATH: ${options.path}');
    return handler.next(options); // continue
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // Manipuler la réponse
    debugPrint('RESPONSE[${response.statusCode}] => DATA: ${response.data}');
    return handler.next(response); // continue
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // Gérer les erreurs
    debugPrint('ERROR[${err.response?.statusCode}] => MESSAGE: ${err.message}');
    return handler.next(err); // continue
  }
}
