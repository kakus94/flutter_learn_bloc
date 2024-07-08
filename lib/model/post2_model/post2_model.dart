import 'package:freezed_annotation/freezed_annotation.dart';

part 'post2_model.freezed.dart';
part 'post2_model.g.dart';

@freezed
class Post2Model with _$Post2Model {
  factory Post2Model({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) = _Post2Model;

  factory Post2Model.fromJson(Map<String, dynamic> json) =>
      _$Post2ModelFromJson(json);
}
