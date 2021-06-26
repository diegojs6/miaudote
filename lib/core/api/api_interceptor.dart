import 'package:http/http.dart';
import 'package:http_interceptor/http/http.dart';
import 'package:http_interceptor/http/interceptor_contract.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class IHttpClient {
  Future<Response> get(String? endpoint, {Map<String, String>? headers});
  Future<Response> post(String? endpoint, String body,
      {Map<String, String>? headers});
  Future<Response> patch(String? endpoint, String body,
      {Map<String, String>? headers});
  Future<Response> put(String? endpoint, String body,
      {Map<String, String>? headers});
  Future<Response> delete(String? endpoint, {Map<String, String>? headers});
}

class HttpClient extends IHttpClient implements InterceptorContract {
  late InterceptedClient _client;

  HttpClient() {
    _client = InterceptedClient.build(interceptors: [this]);
  }

  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    var token = await ParseUser.currentUser();
    data.headers['Content-Type'] = "application/json";
    if (data.headers.containsKey('Authorization')) {
      data.headers["Authorization"] = token;
    }
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    print('Response ${data.url}');
    print('Response ${data.statusCode}');
    print('Response ${data.headers}');
    print('Response ${data.body}');

    return data;
  }

   @override
  Future<Response> get(String? endpoint, {Map<String, String>? headers}) async {
   final response = await _client.get(
     endpoint!.toUri(),
     headers: {
        'X-Parse-Application-Id': '1OKzIuoVO9qiDqRblLdzej0EozjBg8Un7hVQ8SL5',
        'X-Parse-REST-API-Key': 'CtiY719Ne7ijJyTqHI0c4Wi3217ROuHketaqyubS',
        'Content-Type': 'application/json'
     }
   );

   return response;
  }

    @override
  Future<Response> post(String? endpoint, String body,
      {Map<String, String>? headers}) async{
    final response = await _client.post(
      endpoint!.toUri(),
      body: body,
       headers: {
        'X-Parse-Application-Id': '1OKzIuoVO9qiDqRblLdzej0EozjBg8Un7hVQ8SL5',
        'X-Parse-REST-API-Key': 'CtiY719Ne7ijJyTqHI0c4Wi3217ROuHketaqyubS',
        'Content-Type': 'application/json'
     }
    );
    return response;
  }

  @override
  Future<Response> put(String? endpoint, String body,
      {Map<String, String>? headers}) async{
     final response = await _client.post(
      endpoint!.toUri(),
      body: body,
       headers: {
        'X-Parse-Application-Id': '1OKzIuoVO9qiDqRblLdzej0EozjBg8Un7hVQ8SL5',
        'X-Parse-REST-API-Key': 'CtiY719Ne7ijJyTqHI0c4Wi3217ROuHketaqyubS',
        'Content-Type': 'application/json'
     }
    );
    return response;
  }

   @override
  Future<Response> patch(String? endpoint, String body,
      {Map<String, String>? headers})async {
     final response = await _client.post(
      endpoint!.toUri(),
      body: body,
       headers: {
        'X-Parse-Application-Id': '1OKzIuoVO9qiDqRblLdzej0EozjBg8Un7hVQ8SL5',
        'X-Parse-REST-API-Key': 'CtiY719Ne7ijJyTqHI0c4Wi3217ROuHketaqyubS',
        'Content-Type': 'application/json'
     }
    );
    return response;
  }

  @override
  Future<Response> delete(String? endpoint, {Map<String, String>? headers}) async{
     final response = await _client.post(
      endpoint!.toUri(),
       headers: {
        'X-Parse-Application-Id': '1OKzIuoVO9qiDqRblLdzej0EozjBg8Un7hVQ8SL5',
        'X-Parse-REST-API-Key': 'CtiY719Ne7ijJyTqHI0c4Wi3217ROuHketaqyubS',
        'Content-Type': 'application/json'
     }
    );
    return response;
  }
}
