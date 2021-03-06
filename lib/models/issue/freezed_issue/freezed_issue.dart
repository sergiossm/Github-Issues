import 'package:github_issues/models/author/freezed_author.dart';
import 'package:github_issues/models/label/freezed_label_list/freezed_label_list.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_issue.freezed.dart';
part 'freezed_issue.g.dart';

@freezed
abstract class Issue with _$Issue {
  const factory Issue(
    String id,
    int number,
    String title,
    String state,
    String createdAt,
    Author author,
    String authorAssociation,
    @nullable LabelList labels,
    int nComments,
    String bodyHTML,
  ) = _Issue;

  factory Issue.fromJson(Map<String, dynamic> json) => _$IssueFromJson(json);
}
