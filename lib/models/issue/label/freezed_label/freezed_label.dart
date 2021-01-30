import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_label.freezed.dart';
part 'freezed_label.g.dart';

@freezed
abstract class Label with _$Label {
  const factory Label(String name, String color) = _Label;

  factory Label.fromJson(Map<String, dynamic> json) => _$LabelFromJson(json);
}
