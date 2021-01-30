// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'freezed_issue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Issue _$IssueFromJson(Map<String, dynamic> json) {
  return _Issue.fromJson(json);
}

/// @nodoc
class _$IssueTearOff {
  const _$IssueTearOff();

// ignore: unused_element
  _Issue call(
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
      Map<dynamic, dynamic> user,
      Map<dynamic, dynamic> labels,
      String state,
      bool locked,
      Map<dynamic, dynamic> assignee,
      List<dynamic> assignees,
      String milestone,
      int comments,
      String created_at,
      String updated_at,
      String author_association,
      String active_lock_reason,
      Map<dynamic, dynamic> pull_request,
      String body) {
    return _Issue(
      url,
      repository_url,
      labels_url,
      comments_url,
      events_url,
      html_url,
      id,
      node_id,
      number,
      title,
      user,
      labels,
      state,
      locked,
      assignee,
      assignees,
      milestone,
      comments,
      created_at,
      updated_at,
      author_association,
      active_lock_reason,
      pull_request,
      body,
    );
  }

// ignore: unused_element
  Issue fromJson(Map<String, Object> json) {
    return Issue.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Issue = _$IssueTearOff();

/// @nodoc
mixin _$Issue {
  String get url;
  String get repository_url;
  String get labels_url;
  String get comments_url;
  String get events_url;
  String get html_url;
  String get id;
  String get node_id;
  int get number;
  String get title;
  Map<dynamic, dynamic> get user;
  Map<dynamic, dynamic> get labels;
  String get state;
  bool get locked;
  Map<dynamic, dynamic> get assignee;
  List<dynamic> get assignees;
  String get milestone;
  int get comments;
  String get created_at;
  String get updated_at;
  String get author_association;
  String get active_lock_reason;
  Map<dynamic, dynamic> get pull_request;
  String get body;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $IssueCopyWith<Issue> get copyWith;
}

/// @nodoc
abstract class $IssueCopyWith<$Res> {
  factory $IssueCopyWith(Issue value, $Res Function(Issue) then) =
      _$IssueCopyWithImpl<$Res>;
  $Res call(
      {String url,
      String repository_url,
      String labels_url,
      String comments_url,
      String events_url,
      String html_url,
      String id,
      String node_id,
      int number,
      String title,
      Map<dynamic, dynamic> user,
      Map<dynamic, dynamic> labels,
      String state,
      bool locked,
      Map<dynamic, dynamic> assignee,
      List<dynamic> assignees,
      String milestone,
      int comments,
      String created_at,
      String updated_at,
      String author_association,
      String active_lock_reason,
      Map<dynamic, dynamic> pull_request,
      String body});
}

/// @nodoc
class _$IssueCopyWithImpl<$Res> implements $IssueCopyWith<$Res> {
  _$IssueCopyWithImpl(this._value, this._then);

  final Issue _value;
  // ignore: unused_field
  final $Res Function(Issue) _then;

  @override
  $Res call({
    Object url = freezed,
    Object repository_url = freezed,
    Object labels_url = freezed,
    Object comments_url = freezed,
    Object events_url = freezed,
    Object html_url = freezed,
    Object id = freezed,
    Object node_id = freezed,
    Object number = freezed,
    Object title = freezed,
    Object user = freezed,
    Object labels = freezed,
    Object state = freezed,
    Object locked = freezed,
    Object assignee = freezed,
    Object assignees = freezed,
    Object milestone = freezed,
    Object comments = freezed,
    Object created_at = freezed,
    Object updated_at = freezed,
    Object author_association = freezed,
    Object active_lock_reason = freezed,
    Object pull_request = freezed,
    Object body = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed ? _value.url : url as String,
      repository_url: repository_url == freezed
          ? _value.repository_url
          : repository_url as String,
      labels_url:
          labels_url == freezed ? _value.labels_url : labels_url as String,
      comments_url: comments_url == freezed
          ? _value.comments_url
          : comments_url as String,
      events_url:
          events_url == freezed ? _value.events_url : events_url as String,
      html_url: html_url == freezed ? _value.html_url : html_url as String,
      id: id == freezed ? _value.id : id as String,
      node_id: node_id == freezed ? _value.node_id : node_id as String,
      number: number == freezed ? _value.number : number as int,
      title: title == freezed ? _value.title : title as String,
      user: user == freezed ? _value.user : user as Map<dynamic, dynamic>,
      labels:
          labels == freezed ? _value.labels : labels as Map<dynamic, dynamic>,
      state: state == freezed ? _value.state : state as String,
      locked: locked == freezed ? _value.locked : locked as bool,
      assignee: assignee == freezed
          ? _value.assignee
          : assignee as Map<dynamic, dynamic>,
      assignees:
          assignees == freezed ? _value.assignees : assignees as List<dynamic>,
      milestone: milestone == freezed ? _value.milestone : milestone as String,
      comments: comments == freezed ? _value.comments : comments as int,
      created_at:
          created_at == freezed ? _value.created_at : created_at as String,
      updated_at:
          updated_at == freezed ? _value.updated_at : updated_at as String,
      author_association: author_association == freezed
          ? _value.author_association
          : author_association as String,
      active_lock_reason: active_lock_reason == freezed
          ? _value.active_lock_reason
          : active_lock_reason as String,
      pull_request: pull_request == freezed
          ? _value.pull_request
          : pull_request as Map<dynamic, dynamic>,
      body: body == freezed ? _value.body : body as String,
    ));
  }
}

/// @nodoc
abstract class _$IssueCopyWith<$Res> implements $IssueCopyWith<$Res> {
  factory _$IssueCopyWith(_Issue value, $Res Function(_Issue) then) =
      __$IssueCopyWithImpl<$Res>;
  @override
  $Res call(
      {String url,
      String repository_url,
      String labels_url,
      String comments_url,
      String events_url,
      String html_url,
      String id,
      String node_id,
      int number,
      String title,
      Map<dynamic, dynamic> user,
      Map<dynamic, dynamic> labels,
      String state,
      bool locked,
      Map<dynamic, dynamic> assignee,
      List<dynamic> assignees,
      String milestone,
      int comments,
      String created_at,
      String updated_at,
      String author_association,
      String active_lock_reason,
      Map<dynamic, dynamic> pull_request,
      String body});
}

/// @nodoc
class __$IssueCopyWithImpl<$Res> extends _$IssueCopyWithImpl<$Res>
    implements _$IssueCopyWith<$Res> {
  __$IssueCopyWithImpl(_Issue _value, $Res Function(_Issue) _then)
      : super(_value, (v) => _then(v as _Issue));

  @override
  _Issue get _value => super._value as _Issue;

  @override
  $Res call({
    Object url = freezed,
    Object repository_url = freezed,
    Object labels_url = freezed,
    Object comments_url = freezed,
    Object events_url = freezed,
    Object html_url = freezed,
    Object id = freezed,
    Object node_id = freezed,
    Object number = freezed,
    Object title = freezed,
    Object user = freezed,
    Object labels = freezed,
    Object state = freezed,
    Object locked = freezed,
    Object assignee = freezed,
    Object assignees = freezed,
    Object milestone = freezed,
    Object comments = freezed,
    Object created_at = freezed,
    Object updated_at = freezed,
    Object author_association = freezed,
    Object active_lock_reason = freezed,
    Object pull_request = freezed,
    Object body = freezed,
  }) {
    return _then(_Issue(
      url == freezed ? _value.url : url as String,
      repository_url == freezed
          ? _value.repository_url
          : repository_url as String,
      labels_url == freezed ? _value.labels_url : labels_url as String,
      comments_url == freezed ? _value.comments_url : comments_url as String,
      events_url == freezed ? _value.events_url : events_url as String,
      html_url == freezed ? _value.html_url : html_url as String,
      id == freezed ? _value.id : id as String,
      node_id == freezed ? _value.node_id : node_id as String,
      number == freezed ? _value.number : number as int,
      title == freezed ? _value.title : title as String,
      user == freezed ? _value.user : user as Map<dynamic, dynamic>,
      labels == freezed ? _value.labels : labels as Map<dynamic, dynamic>,
      state == freezed ? _value.state : state as String,
      locked == freezed ? _value.locked : locked as bool,
      assignee == freezed ? _value.assignee : assignee as Map<dynamic, dynamic>,
      assignees == freezed ? _value.assignees : assignees as List<dynamic>,
      milestone == freezed ? _value.milestone : milestone as String,
      comments == freezed ? _value.comments : comments as int,
      created_at == freezed ? _value.created_at : created_at as String,
      updated_at == freezed ? _value.updated_at : updated_at as String,
      author_association == freezed
          ? _value.author_association
          : author_association as String,
      active_lock_reason == freezed
          ? _value.active_lock_reason
          : active_lock_reason as String,
      pull_request == freezed
          ? _value.pull_request
          : pull_request as Map<dynamic, dynamic>,
      body == freezed ? _value.body : body as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Issue implements _Issue {
  const _$_Issue(
      this.url,
      this.repository_url,
      this.labels_url,
      this.comments_url,
      this.events_url,
      this.html_url,
      this.id,
      this.node_id,
      this.number,
      this.title,
      this.user,
      this.labels,
      this.state,
      this.locked,
      this.assignee,
      this.assignees,
      this.milestone,
      this.comments,
      this.created_at,
      this.updated_at,
      this.author_association,
      this.active_lock_reason,
      this.pull_request,
      this.body)
      : assert(url != null),
        assert(repository_url != null),
        assert(labels_url != null),
        assert(comments_url != null),
        assert(events_url != null),
        assert(html_url != null),
        assert(id != null),
        assert(node_id != null),
        assert(number != null),
        assert(title != null),
        assert(user != null),
        assert(labels != null),
        assert(state != null),
        assert(locked != null),
        assert(assignee != null),
        assert(assignees != null),
        assert(milestone != null),
        assert(comments != null),
        assert(created_at != null),
        assert(updated_at != null),
        assert(author_association != null),
        assert(active_lock_reason != null),
        assert(pull_request != null),
        assert(body != null);

  factory _$_Issue.fromJson(Map<String, dynamic> json) =>
      _$_$_IssueFromJson(json);

  @override
  final String url;
  @override
  final String repository_url;
  @override
  final String labels_url;
  @override
  final String comments_url;
  @override
  final String events_url;
  @override
  final String html_url;
  @override
  final String id;
  @override
  final String node_id;
  @override
  final int number;
  @override
  final String title;
  @override
  final Map<dynamic, dynamic> user;
  @override
  final Map<dynamic, dynamic> labels;
  @override
  final String state;
  @override
  final bool locked;
  @override
  final Map<dynamic, dynamic> assignee;
  @override
  final List<dynamic> assignees;
  @override
  final String milestone;
  @override
  final int comments;
  @override
  final String created_at;
  @override
  final String updated_at;
  @override
  final String author_association;
  @override
  final String active_lock_reason;
  @override
  final Map<dynamic, dynamic> pull_request;
  @override
  final String body;

  @override
  String toString() {
    return 'Issue(url: $url, repository_url: $repository_url, labels_url: $labels_url, comments_url: $comments_url, events_url: $events_url, html_url: $html_url, id: $id, node_id: $node_id, number: $number, title: $title, user: $user, labels: $labels, state: $state, locked: $locked, assignee: $assignee, assignees: $assignees, milestone: $milestone, comments: $comments, created_at: $created_at, updated_at: $updated_at, author_association: $author_association, active_lock_reason: $active_lock_reason, pull_request: $pull_request, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Issue &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.repository_url, repository_url) ||
                const DeepCollectionEquality()
                    .equals(other.repository_url, repository_url)) &&
            (identical(other.labels_url, labels_url) ||
                const DeepCollectionEquality()
                    .equals(other.labels_url, labels_url)) &&
            (identical(other.comments_url, comments_url) ||
                const DeepCollectionEquality()
                    .equals(other.comments_url, comments_url)) &&
            (identical(other.events_url, events_url) ||
                const DeepCollectionEquality()
                    .equals(other.events_url, events_url)) &&
            (identical(other.html_url, html_url) ||
                const DeepCollectionEquality()
                    .equals(other.html_url, html_url)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.node_id, node_id) ||
                const DeepCollectionEquality()
                    .equals(other.node_id, node_id)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.labels, labels) ||
                const DeepCollectionEquality().equals(other.labels, labels)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.locked, locked) ||
                const DeepCollectionEquality().equals(other.locked, locked)) &&
            (identical(other.assignee, assignee) ||
                const DeepCollectionEquality()
                    .equals(other.assignee, assignee)) &&
            (identical(other.assignees, assignees) ||
                const DeepCollectionEquality()
                    .equals(other.assignees, assignees)) &&
            (identical(other.milestone, milestone) ||
                const DeepCollectionEquality()
                    .equals(other.milestone, milestone)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)) &&
            (identical(other.updated_at, updated_at) ||
                const DeepCollectionEquality()
                    .equals(other.updated_at, updated_at)) &&
            (identical(other.author_association, author_association) ||
                const DeepCollectionEquality()
                    .equals(other.author_association, author_association)) &&
            (identical(other.active_lock_reason, active_lock_reason) ||
                const DeepCollectionEquality()
                    .equals(other.active_lock_reason, active_lock_reason)) &&
            (identical(other.pull_request, pull_request) ||
                const DeepCollectionEquality()
                    .equals(other.pull_request, pull_request)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(repository_url) ^
      const DeepCollectionEquality().hash(labels_url) ^
      const DeepCollectionEquality().hash(comments_url) ^
      const DeepCollectionEquality().hash(events_url) ^
      const DeepCollectionEquality().hash(html_url) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(node_id) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(labels) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(locked) ^
      const DeepCollectionEquality().hash(assignee) ^
      const DeepCollectionEquality().hash(assignees) ^
      const DeepCollectionEquality().hash(milestone) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(created_at) ^
      const DeepCollectionEquality().hash(updated_at) ^
      const DeepCollectionEquality().hash(author_association) ^
      const DeepCollectionEquality().hash(active_lock_reason) ^
      const DeepCollectionEquality().hash(pull_request) ^
      const DeepCollectionEquality().hash(body);

  @JsonKey(ignore: true)
  @override
  _$IssueCopyWith<_Issue> get copyWith =>
      __$IssueCopyWithImpl<_Issue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IssueToJson(this);
  }
}

abstract class _Issue implements Issue {
  const factory _Issue(
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
      Map<dynamic, dynamic> user,
      Map<dynamic, dynamic> labels,
      String state,
      bool locked,
      Map<dynamic, dynamic> assignee,
      List<dynamic> assignees,
      String milestone,
      int comments,
      String created_at,
      String updated_at,
      String author_association,
      String active_lock_reason,
      Map<dynamic, dynamic> pull_request,
      String body) = _$_Issue;

  factory _Issue.fromJson(Map<String, dynamic> json) = _$_Issue.fromJson;

  @override
  String get url;
  @override
  String get repository_url;
  @override
  String get labels_url;
  @override
  String get comments_url;
  @override
  String get events_url;
  @override
  String get html_url;
  @override
  String get id;
  @override
  String get node_id;
  @override
  int get number;
  @override
  String get title;
  @override
  Map<dynamic, dynamic> get user;
  @override
  Map<dynamic, dynamic> get labels;
  @override
  String get state;
  @override
  bool get locked;
  @override
  Map<dynamic, dynamic> get assignee;
  @override
  List<dynamic> get assignees;
  @override
  String get milestone;
  @override
  int get comments;
  @override
  String get created_at;
  @override
  String get updated_at;
  @override
  String get author_association;
  @override
  String get active_lock_reason;
  @override
  Map<dynamic, dynamic> get pull_request;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$IssueCopyWith<_Issue> get copyWith;
}
