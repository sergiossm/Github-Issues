import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_author.freezed.dart';
part 'freezed_author.g.dart';

@freezed
abstract class Author with _$Author {
  const factory Author(
    @nullable String avatarUrl,
    String login,
  ) = _Author;

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
}
