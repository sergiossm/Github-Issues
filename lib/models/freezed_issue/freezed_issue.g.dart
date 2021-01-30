// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_issue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Issue _$_$_IssueFromJson(Map<String, dynamic> json) {
  return _$_Issue(
    json['url'] as String,
    json['repository_url'] as String,
    json['labels_url'] as String,
    json['comments_url'] as String,
    json['events_url'] as String,
    json['html_url'] as String,
    json['id'] as int,
    json['node_id'] as String,
    json['number'] as int,
    json['title'] as String,
    json['user'] as Map<String, dynamic>,
    json['labels'] as List,
    json['state'] as String,
    json['locked'] as bool,
    json['assignee'] as Map<String, dynamic>,
    json['assignees'] as List,
    json['milestone'] as String,
    json['comments'] as int,
    json['created_at'] as String,
    json['updated_at'] as String,
    json['closed_at'] as String,
    json['author_association'] as String,
    json['active_lock_reason'] as String,
    json['pull_request'] as Map<String, dynamic>,
    json['body'] as String,
    json['performed_via_github_app'] as String,
  );
}

Map<String, dynamic> _$_$_IssueToJson(_$_Issue instance) => <String, dynamic>{
      'url': instance.url,
      'repository_url': instance.repository_url,
      'labels_url': instance.labels_url,
      'comments_url': instance.comments_url,
      'events_url': instance.events_url,
      'html_url': instance.html_url,
      'id': instance.id,
      'node_id': instance.node_id,
      'number': instance.number,
      'title': instance.title,
      'user': instance.user,
      'labels': instance.labels,
      'state': instance.state,
      'locked': instance.locked,
      'assignee': instance.assignee,
      'assignees': instance.assignees,
      'milestone': instance.milestone,
      'comments': instance.comments,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'closed_at': instance.closed_at,
      'author_association': instance.author_association,
      'active_lock_reason': instance.active_lock_reason,
      'pull_request': instance.pull_request,
      'body': instance.body,
      'performed_via_github_app': instance.performed_via_github_app,
    };
