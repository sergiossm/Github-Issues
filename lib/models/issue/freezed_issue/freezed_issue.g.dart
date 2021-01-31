// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_issue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Issue _$_$_IssueFromJson(Map<String, dynamic> json) {
  return _$_Issue(
    json['id'] as String,
    json['number'] as int,
    json['title'] as String,
    json['state'] as String,
    json['createdAt'] as String,
    json['author'] == null
        ? null
        : Author.fromJson(json['author'] as Map<String, dynamic>),
    json['authorAssociation'] as String,
    json['labels'] == null
        ? null
        : LabelList.fromJson(json['labels'] as Map<String, dynamic>),
    json['comments'] == null ? 0 : json['comments']['totalCount'] as int,
    json['bodyHTML'] as String,
  );
}

Map<String, dynamic> _$_$_IssueToJson(_$_Issue instance) => <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'title': instance.title,
      'state': instance.state,
      'createdAt': instance.createdAt,
      'author': instance.author,
      'authorAssociation': instance.authorAssociation,
      'labels': instance.labels,
      'nComments': instance.nComments,
      'bodyHTML': instance.bodyHTML,
    };
