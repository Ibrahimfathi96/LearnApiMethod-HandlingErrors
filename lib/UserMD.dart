import 'package:json_annotation/json_annotation.dart';

part 'UserMD.g.dart';
@JsonSerializable()
class UserMd {
  int? id;
  String? name;
  String? email;
  String? gender;
  String? status;

  UserMd({
       this.id,
       this.name,
       this.email,
       this.gender,
       this.status,});

  factory UserMd.fromJson(Map<String, dynamic> json) => _$UserMdFromJson(json);

  Map<String, dynamic> toJson() => _$UserMdToJson(this);

}