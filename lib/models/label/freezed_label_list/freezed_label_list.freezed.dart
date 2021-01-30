// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'freezed_label_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LabelList _$LabelListFromJson(Map<String, dynamic> json) {
  return _LabelList.fromJson(json);
}

/// @nodoc
class _$LabelListTearOff {
  const _$LabelListTearOff();

// ignore: unused_element
  _LabelList call(List<Label> labelList) {
    return _LabelList(
      labelList,
    );
  }

// ignore: unused_element
  LabelList fromJson(Map<String, Object> json) {
    return LabelList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LabelList = _$LabelListTearOff();

/// @nodoc
mixin _$LabelList {
  List<Label> get labelList;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LabelListCopyWith<LabelList> get copyWith;
}

/// @nodoc
abstract class $LabelListCopyWith<$Res> {
  factory $LabelListCopyWith(LabelList value, $Res Function(LabelList) then) =
      _$LabelListCopyWithImpl<$Res>;
  $Res call({List<Label> labelList});
}

/// @nodoc
class _$LabelListCopyWithImpl<$Res> implements $LabelListCopyWith<$Res> {
  _$LabelListCopyWithImpl(this._value, this._then);

  final LabelList _value;
  // ignore: unused_field
  final $Res Function(LabelList) _then;

  @override
  $Res call({
    Object labelList = freezed,
  }) {
    return _then(_value.copyWith(
      labelList:
          labelList == freezed ? _value.labelList : labelList as List<Label>,
    ));
  }
}

/// @nodoc
abstract class _$LabelListCopyWith<$Res> implements $LabelListCopyWith<$Res> {
  factory _$LabelListCopyWith(
          _LabelList value, $Res Function(_LabelList) then) =
      __$LabelListCopyWithImpl<$Res>;
  @override
  $Res call({List<Label> labelList});
}

/// @nodoc
class __$LabelListCopyWithImpl<$Res> extends _$LabelListCopyWithImpl<$Res>
    implements _$LabelListCopyWith<$Res> {
  __$LabelListCopyWithImpl(_LabelList _value, $Res Function(_LabelList) _then)
      : super(_value, (v) => _then(v as _LabelList));

  @override
  _LabelList get _value => super._value as _LabelList;

  @override
  $Res call({
    Object labelList = freezed,
  }) {
    return _then(_LabelList(
      labelList == freezed ? _value.labelList : labelList as List<Label>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LabelList implements _LabelList {
  const _$_LabelList(this.labelList) : assert(labelList != null);

  factory _$_LabelList.fromJson(Map<String, dynamic> json) =>
      _$_$_LabelListFromJson(json);

  @override
  final List<Label> labelList;

  @override
  String toString() {
    return 'LabelList(labelList: $labelList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LabelList &&
            (identical(other.labelList, labelList) ||
                const DeepCollectionEquality()
                    .equals(other.labelList, labelList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(labelList);

  @JsonKey(ignore: true)
  @override
  _$LabelListCopyWith<_LabelList> get copyWith =>
      __$LabelListCopyWithImpl<_LabelList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LabelListToJson(this);
  }
}

abstract class _LabelList implements LabelList {
  const factory _LabelList(List<Label> labelList) = _$_LabelList;

  factory _LabelList.fromJson(Map<String, dynamic> json) =
      _$_LabelList.fromJson;

  @override
  List<Label> get labelList;
  @override
  @JsonKey(ignore: true)
  _$LabelListCopyWith<_LabelList> get copyWith;
}
