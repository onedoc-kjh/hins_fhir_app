import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;

class NetworkResult {
  Result result;
  int? statusCode;
  dynamic response;

  NetworkResult({required this.result, this.statusCode, this.response});
}

enum Result {
  SUCCESS,
  FAIL,
}

class HttpClient {
  final _baseUrl = "http://192.168.0.167:3000";
  final _httpClient = http.Client();

  Future<NetworkResult> post({required String path, Map<String, Object?>? params}) async {
    try {
      final response = await _httpClient.post(Uri.parse('$_baseUrl$path'),
          headers: _jsonHeaders(null), body: json.encode(params));
      return _handleResponse(response);
    } catch (e) {
      return NetworkResult(result: Result.FAIL, response: e);
    }
  }

  Future<NetworkResult> put(
      {required String path, Map<String, Object?>? params, Map<String, dynamic>? headers}) async {
    try {
      final response = await _httpClient.put(Uri.parse('$_baseUrl$path'),
          headers: _jsonHeaders(headers), body: json.encode(params));
      return _handleResponse(response);
    } catch (e) {
      return NetworkResult(result: Result.FAIL, response: e);
    }
  }

  Future<NetworkResult> get(String path, [bool? onedoc]) async {
    final baseurl = onedoc == true ? "토큰 도메인" : "http://192.168.0.167:3000";
    try {
      final response =
          await _httpClient.get(Uri.parse('$baseurl$path'), headers: _jsonHeaders(null));
      return _handleResponse(response);
    } catch (e) {
      return NetworkResult(result: Result.FAIL, response: e);
    }
  }

  Future<NetworkResult> delete(String path) async {
    try {
      final response =
          await _httpClient.delete(Uri.parse('$_baseUrl$path'), headers: _jsonHeaders(null));
      return _handleResponse(response);
    } catch (e) {
      return NetworkResult(result: Result.FAIL, response: e);
    }
  }

  _jsonHeaders(Map<String, dynamic>? h) {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
    };

    if (h != null) {
      headers.addAll(h.map((key, value) => MapEntry(key, value.toString())));
    }

    return headers;
  }

  NetworkResult _handleResponse(http.Response response) {
    if (response.statusCode >= HttpStatus.ok && response.statusCode < 300) {
      final body = json.decode(utf8.decode(response.bodyBytes));
      return NetworkResult(result: Result.SUCCESS, statusCode: response.statusCode, response: body);
    }

    if (response.bodyBytes.isNotEmpty) {
      final body = json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
      return NetworkResult(result: Result.FAIL, statusCode: response.statusCode, response: body);
    }

    return NetworkResult(result: Result.FAIL, statusCode: response.statusCode);
  }
}
