// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issues_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$IssuesApiService extends IssuesApiService {
  _$IssuesApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = IssuesApiService;

  @override
  Future<Response<dynamic>> getIssues({int per_page = 100, int page = 0}) {
    final $url = '/issues';
    final $params = <String, dynamic>{'per_page': per_page, 'page': page};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getIssue(int id) {
    final $url = '/issues/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
