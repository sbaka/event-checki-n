import 'package:event_check_in/features/auth/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String email,
    required String name,
    required String role,
    required bool isActive,
    required DateTime createdAt,
    String? profileImage,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  factory UserModel.fromEntity(User user) => UserModel(
        id: user.id,
        email: user.email,
        name: user.name,
        profileImage: user.profileImage,
        role: user.role,
        isActive: user.isActive,
        createdAt: user.createdAt,
      );
}

extension UserModelX on UserModel {
  User toEntity() => User(
        id: id,
        email: email,
        name: name,
        profileImage: profileImage,
        role: role,
        isActive: isActive,
        createdAt: createdAt,
      );
}
