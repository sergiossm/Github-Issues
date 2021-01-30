import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_issue.freezed.dart';
part 'freezed_issue.g.dart';

@freezed
abstract class Issue with _$Issue {
  const factory Issue(
    String url,
    String repository_url,
    String labels_url,
    String comments_url,
    String events_url,
    String html_url,
    String id,
    String node_id,
    int number,
    String title,
    Map user,
    Map labels,
    String state,
    bool locked,
    Map assignee,
    List assignees,
    String milestone,
    int comments,
    String created_at,
    String updated_at,
    String author_association,
    String active_lock_reason,
    Map pull_request,
    String body,
    String performed_via_github_app,
  ) = _Issue;

  factory Issue.fromJson(Map<String, dynamic> json) => _$IssueFromJson(json);
}
