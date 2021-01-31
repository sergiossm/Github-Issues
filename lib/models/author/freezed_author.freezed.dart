// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'freezed_author.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Author _$AuthorFromJson(Map<String, dynamic> json) {
  return _Author.fromJson(json);
}

/// @nodoc
class _$AuthorTearOff {
  const _$AuthorTearOff();

// ignore: unused_element
  _Author call(@nullable String avatarUrl, String login) {
    return _Author(
      avatarUrl,
      login,
    );
  }

// ignore: unused_element
  Author fromJson(Map<String, Object> json) {
    return Author.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Author = _$AuthorTearOff();

/// @nodoc
mixin _$Author {
  @nullable
  String get avatarUrl;
  String get login;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AuthorCopyWith<Author> get copyWith;
}

/// @nodoc
abstract class $AuthorCopyWith<$Res> {
  factory $AuthorCopyWith(Author value, $Res Function(Author) then) =
      _$AuthorCopyWithImpl<$Res>;
  $Res call({@nullable String avatarUrl, String login});
}

/// @nodoc
class _$AuthorCopyWithImpl<$Res> implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._value, this._then);

  final Author _value;
  // ignore: unused_field
  final $Res Function(Author) _then;

  @override
  $Res call({
    Object avatarUrl = freezed,
    Object login = freezed,
  }) {
    return _then(_value.copyWith(
      avatarUrl: avatarUrl == freezed ? _value.avatarUrl : avatarUrl as String,
      login: login == freezed ? _value.login : login as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthorCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$AuthorCopyWith(_Author value, $Res Function(_Author) then) =
      __$AuthorCopyWithImpl<$Res>;
  @override
  $Res call({@nullable String avatarUrl, String login});
}

/// @nodoc
class __$AuthorCopyWithImpl<$Res> extends _$AuthorCopyWithImpl<$Res>
    implements _$AuthorCopyWith<$Res> {
  __$AuthorCopyWithImpl(_Author _value, $Res Function(_Author) _then)
      : super(_value, (v) => _then(v as _Author));

  @override
  _Author get _value => super._value as _Author;

  @override
  $Res call({
    Object avatarUrl = freezed,
    Object login = freezed,
  }) {
    return _then(_Author(
      avatarUrl == freezed ? _value.avatarUrl : avatarUrl as String,
      login == freezed ? _value.login : login as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Author implements _Author {
  const _$_Author(@nullable this.avatarUrl, this.login) : assert(login != null);

  factory _$_Author.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthorFromJson(json);

  @override
  @nullable
  final String avatarUrl;
  @override
  final String login;

  @override
  String toString() {
    return 'Author(avatarUrl: $avatarUrl, login: $login)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Author &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(login);

  @JsonKey(ignore: true)
  @override
  _$AuthorCopyWith<_Author> get copyWith =>
      __$AuthorCopyWithImpl<_Author>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthorToJson(this);
  }
}

abstract class _Author implements Author {
  const factory _Author(@nullable String avatarUrl, String login) = _$_Author;

  factory _Author.fromJson(Map<String, dynamic> json) = _$_Author.fromJson;

  @override
  @nullable
  String get avatarUrl;
  @override
  String get login;
  @override
  @JsonKey(ignore: true)
  _$AuthorCopyWith<_Author> get copyWith;
}
