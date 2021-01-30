import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_issues/models/issue/freezed_issue/freezed_issue.dart';

part 'freezed_issue_list.freezed.dart';
part 'freezed_issue_list.g.dart';

@freezed
abstract class IssueList with _$IssueList {
  const factory IssueList(List<Issue> issueList) = _IssueList;

  factory IssueList.fromJson(Map<String, dynamic> json) =>
      _$IssueListFromJson(json);
}
