import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_issues/models/label/freezed_label/freezed_label.dart';

part 'freezed_label_list.freezed.dart';
part 'freezed_label_list.g.dart';

@freezed
abstract class LabelList with _$LabelList {
  const factory LabelList(List<Label> labelList) = _LabelList;

  factory LabelList.fromJson(Map<String, dynamic> json) =>
      _$LabelListFromJson(json);
}
