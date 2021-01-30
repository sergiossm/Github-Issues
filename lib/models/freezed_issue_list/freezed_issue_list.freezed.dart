// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'freezed_issue_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
IssueList _$IssueListFromJson(Map<String, dynamic> json) {
  return _IssueList.fromJson(json);
}

/// @nodoc
class _$IssueListTearOff {
  const _$IssueListTearOff();

// ignore: unused_element
  _IssueList call(List<Issue> issueList) {
    return _IssueList(
      issueList,
    );
  }

// ignore: unused_element
  IssueList fromJson(Map<String, Object> json) {
    return IssueList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $IssueList = _$IssueListTearOff();

/// @nodoc
mixin _$IssueList {
  List<Issue> get issueList;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $IssueListCopyWith<IssueList> get copyWith;
}

/// @nodoc
abstract class $IssueListCopyWith<$Res> {
  factory $IssueListCopyWith(IssueList value, $Res Function(IssueList) then) =
      _$IssueListCopyWithImpl<$Res>;
  $Res call({List<Issue> issueList});
}

/// @nodoc
class _$IssueListCopyWithImpl<$Res> implements $IssueListCopyWith<$Res> {
  _$IssueListCopyWithImpl(this._value, this._then);

  final IssueList _value;
  // ignore: unused_field
  final $Res Function(IssueList) _then;

  @override
  $Res call({
    Object issueList = freezed,
  }) {
    return _then(_value.copyWith(
      issueList:
          issueList == freezed ? _value.issueList : issueList as List<Issue>,
    ));
  }
}

/// @nodoc
abstract class _$IssueListCopyWith<$Res> implements $IssueListCopyWith<$Res> {
  factory _$IssueListCopyWith(
          _IssueList value, $Res Function(_IssueList) then) =
      __$IssueListCopyWithImpl<$Res>;
  @override
  $Res call({List<Issue> issueList});
}

/// @nodoc
class __$IssueListCopyWithImpl<$Res> extends _$IssueListCopyWithImpl<$Res>
    implements _$IssueListCopyWith<$Res> {
  __$IssueListCopyWithImpl(_IssueList _value, $Res Function(_IssueList) _then)
      : super(_value, (v) => _then(v as _IssueList));

  @override
  _IssueList get _value => super._value as _IssueList;

  @override
  $Res call({
    Object issueList = freezed,
  }) {
    return _then(_IssueList(
      issueList == freezed ? _value.issueList : issueList as List<Issue>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_IssueList implements _IssueList {
  const _$_IssueList(this.issueList) : assert(issueList != null);

  factory _$_IssueList.fromJson(Map<String, dynamic> json) =>
      _$_$_IssueListFromJson(json);

  @override
  final List<Issue> issueList;

  @override
  String toString() {
    return 'IssueList(issueList: $issueList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IssueList &&
            (identical(other.issueList, issueList) ||
                const DeepCollectionEquality()
                    .equals(other.issueList, issueList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(issueList);

  @JsonKey(ignore: true)
  @override
  _$IssueListCopyWith<_IssueList> get copyWith =>
      __$IssueListCopyWithImpl<_IssueList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IssueListToJson(this);
  }
}

abstract class _IssueList implements IssueList {
  const factory _IssueList(List<Issue> issueList) = _$_IssueList;

  factory _IssueList.fromJson(Map<String, dynamic> json) =
      _$_IssueList.fromJson;

  @override
  List<Issue> get issueList;
  @override
  @JsonKey(ignore: true)
  _$IssueListCopyWith<_IssueList> get copyWith;
}
