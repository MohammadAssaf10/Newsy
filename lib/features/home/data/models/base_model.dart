import 'package:json_annotation/json_annotation.dart';

part 'base_model.g.dart';

@JsonSerializable()
class BaseModel {
  @JsonKey(name: "Status")
  int? status;
  @JsonKey(name: "message")
  String? message;
}
