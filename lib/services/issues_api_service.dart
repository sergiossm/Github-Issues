import 'package:chopper/chopper.dart';
import 'package:github_issues/constants/endpoints.dart';

part 'issues_api_service.chopper.dart';

@ChopperApi(baseUrl: ISSUES)
abstract class IssuesApiService extends ChopperService {
  @Get()
  Future<Response> getIssues();

  @Get(path: '/{id}')
  // Query parameters are specified the same way as @Path
  // but obviously with a @Query annotation
  Future<Response> getIssue(@Path('id') int id);

  static IssuesApiService create() => _$IssuesApiService(
        ChopperClient(
          baseUrl: 'https://api.github.com/repos/flutter/flutter',
          services: [_$IssuesApiService()],
          converter: JsonConverter(),
        ),
      );
}
