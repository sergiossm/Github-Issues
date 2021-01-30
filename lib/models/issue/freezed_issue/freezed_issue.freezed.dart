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
      String id,
      int number,
      String title,
      String state,
      String createdAt,
      String authorAssociation,
      @nullable LabelList labels,
      int nComments,
      String bodyHTML) {
    return _Issue(
      id,
      number,
      title,
      state,
      createdAt,
      authorAssociation,
      labels,
      nComments,
      bodyHTML,
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
  String get id;
  int get number;
  String get title;
  String get state;
  String get createdAt;
  String get authorAssociation;
  @nullable
  LabelList get labels;
  int get nComments;
  String get bodyHTML;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $IssueCopyWith<Issue> get copyWith;
}

/// @nodoc
abstract class $IssueCopyWith<$Res> {
  factory $IssueCopyWith(Issue value, $Res Function(Issue) then) =
      _$IssueCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int number,
      String title,
      String state,
      String createdAt,
      String authorAssociation,
      @nullable LabelList labels,
      int nComments,
      String bodyHTML});

  $LabelListCopyWith<$Res> get labels;
}

/// @nodoc
class _$IssueCopyWithImpl<$Res> implements $IssueCopyWith<$Res> {
  _$IssueCopyWithImpl(this._value, this._then);

  final Issue _value;
  // ignore: unused_field
  final $Res Function(Issue) _then;

  @override
  $Res call({
    Object id = freezed,
    Object number = freezed,
    Object title = freezed,
    Object state = freezed,
    Object createdAt = freezed,
    Object authorAssociation = freezed,
    Object labels = freezed,
    Object nComments = freezed,
    Object bodyHTML = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      number: number == freezed ? _value.number : number as int,
      title: title == freezed ? _value.title : title as String,
      state: state == freezed ? _value.state : state as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      authorAssociation: authorAssociation == freezed
          ? _value.authorAssociation
          : authorAssociation as String,
      labels: labels == freezed ? _value.labels : labels as LabelList,
      nComments: nComments == freezed ? _value.nComments : nComments as int,
      bodyHTML: bodyHTML == freezed ? _value.bodyHTML : bodyHTML as String,
    ));
  }

  @override
  $LabelListCopyWith<$Res> get labels {
    if (_value.labels == null) {
      return null;
    }
    return $LabelListCopyWith<$Res>(_value.labels, (value) {
      return _then(_value.copyWith(labels: value));
    });
  }
}

/// @nodoc
abstract class _$IssueCopyWith<$Res> implements $IssueCopyWith<$Res> {
  factory _$IssueCopyWith(_Issue value, $Res Function(_Issue) then) =
      __$IssueCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int number,
      String title,
      String state,
      String createdAt,
      String authorAssociation,
      @nullable LabelList labels,
      int nComments,
      String bodyHTML});

  @override
  $LabelListCopyWith<$Res> get labels;
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
    Object id = freezed,
    Object number = freezed,
    Object title = freezed,
    Object state = freezed,
    Object createdAt = freezed,
    Object authorAssociation = freezed,
    Object labels = freezed,
    Object nComments = freezed,
    Object bodyHTML = freezed,
  }) {
    return _then(_Issue(
      id == freezed ? _value.id : id as String,
      number == freezed ? _value.number : number as int,
      title == freezed ? _value.title : title as String,
      state == freezed ? _value.state : state as String,
      createdAt == freezed ? _value.createdAt : createdAt as String,
      authorAssociation == freezed
          ? _value.authorAssociation
          : authorAssociation as String,
      labels == freezed ? _value.labels : labels as LabelList,
      nComments == freezed ? _value.nComments : nComments as int,
      bodyHTML == freezed ? _value.bodyHTML : bodyHTML as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Issue implements _Issue {
  const _$_Issue(
      this.id,
      this.number,
      this.title,
      this.state,
      this.createdAt,
      this.authorAssociation,
      @nullable this.labels,
      this.nComments,
      this.bodyHTML)
      : assert(id != null),
        assert(number != null),
        assert(title != null),
        assert(state != null),
        assert(createdAt != null),
        assert(authorAssociation != null),
        assert(nComments != null),
        assert(bodyHTML != null);

  factory _$_Issue.fromJson(Map<String, dynamic> json) =>
      _$_$_IssueFromJson(json);

  @override
  final String id;
  @override
  final int number;
  @override
  final String title;
  @override
  final String state;
  @override
  final String createdAt;
  @override
  final String authorAssociation;
  @override
  @nullable
  final LabelList labels;
  @override
  final int nComments;
  @override
  final String bodyHTML;

  @override
  String toString() {
    return 'Issue(id: $id, number: $number, title: $title, state: $state, createdAt: $createdAt, authorAssociation: $authorAssociation, labels: $labels, nComments: $nComments, bodyHTML: $bodyHTML)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Issue &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.authorAssociation, authorAssociation) ||
                const DeepCollectionEquality()
                    .equals(other.authorAssociation, authorAssociation)) &&
            (identical(other.labels, labels) ||
                const DeepCollectionEquality().equals(other.labels, labels)) &&
            (identical(other.nComments, nComments) ||
                const DeepCollectionEquality()
                    .equals(other.nComments, nComments)) &&
            (identical(other.bodyHTML, bodyHTML) ||
                const DeepCollectionEquality()
                    .equals(other.bodyHTML, bodyHTML)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(authorAssociation) ^
      const DeepCollectionEquality().hash(labels) ^
      const DeepCollectionEquality().hash(nComments) ^
      const DeepCollectionEquality().hash(bodyHTML);

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
      String id,
      int number,
      String title,
      String state,
      String createdAt,
      String authorAssociation,
      @nullable LabelList labels,
      int nComments,
      String bodyHTML) = _$_Issue;

  factory _Issue.fromJson(Map<String, dynamic> json) = _$_Issue.fromJson;

  @override
  String get id;
  @override
  int get number;
  @override
  String get title;
  @override
  String get state;
  @override
  String get createdAt;
  @override
  String get authorAssociation;
  @override
  @nullable
  LabelList get labels;
  @override
  int get nComments;
  @override
  String get bodyHTML;
  @override
  @JsonKey(ignore: true)
  _$IssueCopyWith<_Issue> get copyWith;
}
