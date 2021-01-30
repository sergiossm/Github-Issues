// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_issue_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IssueList _$_$_IssueListFromJson(Map<String, dynamic> json) {
  return _$_IssueList(
    (json['issueList'] as List)
        ?.map(
            (e) => e == null ? null : Issue.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_IssueListToJson(_$_IssueList instance) =>
    <String, dynamic>{
      'issueList': instance.issueList,
    };
