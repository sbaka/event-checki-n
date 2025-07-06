import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.id,
    required this.email,
    required this.name,
    this.profileImage,
    required this.role,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });
  final String id;
  final String email;
  final String name;
  final String? profileImage;
  final String role;
  final bool isActive;
  final DateTime createdAt;
  final DateTime updatedAt;

  @override
  List<Object?> get props => [
        id,
        email,
        name,
        profileImage,
        role,
        isActive,
        createdAt,
        updatedAt,
      ];
}
