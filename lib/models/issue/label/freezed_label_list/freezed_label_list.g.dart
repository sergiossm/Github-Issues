// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_label_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LabelList _$_$_LabelListFromJson(Map<String, dynamic> json) {
  return _$_LabelList(
    (json['nodes'] as List)
        ?.map(
            (e) => e == null ? null : Label.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_LabelListToJson(_$_LabelList instance) =>
    <String, dynamic>{
      'labelList': instance.labelList,
    };
