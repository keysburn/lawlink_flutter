import 'package:dio/dio.dart';
import 'package:lawlink_flutter/data/remote/api_service.dart';
import 'package:lawlink_flutter/data/remote/api_urls.dart';

class RemoteRepository {
  final _dioService = ApiService();

  Future<Response> getIncidentList([name]) async {
    return await _dioService.get(ApiUrls.INCIDENT_LIST,
        queryParameters: {"name": name},
        options: Options(headers: {"requiresToken": false}));
  }

  Future<Response> getIncident(int seq) async {
    return await _dioService.get(ApiUrls.INCIDENT,
        queryParameters: {"seq": seq},
        options: Options(headers: {"requiresToken": false}));
  }

  Future<Response> createIncident(court, caseNo, name) async {
    return await _dioService.post(ApiUrls.INCIDENT,
        data: {"court": court, "caseNo": caseNo, "name": name},
        options: Options(headers: {"requiresToken": false}));
  }

  Future<Response> deleteIncident(int seq) async {
    return await _dioService.delete(ApiUrls.INCIDENT,
        queryParameters: {"seq": seq},
        options: Options(headers: {"requiresToken": false}));
  }
}
