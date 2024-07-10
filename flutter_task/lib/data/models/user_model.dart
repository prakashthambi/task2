import 'package:json_annotation/json_annotation.dart';
import 'package:user_listing_app/domain/usecases/entities/user.dart';
// import '../../domain/entities/user.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends User {
  final int id;
  final String email;
  final String first_name;
  final String last_name;
  final String avatar;

  UserModel({
    required this.id,
    required this.email,
    required this.first_name,
    required this.last_name,
    required this.avatar,
  }) : super(
          id: id,
          email: email,
          firstName: first_name,
          lastName: last_name,
          avatar: avatar,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
