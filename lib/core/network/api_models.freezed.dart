// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) {
  return _LoginRequest.fromJson(json);
}

/// @nodoc
mixin _$LoginRequest {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this LoginRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginRequestCopyWith<LoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestCopyWith<$Res> {
  factory $LoginRequestCopyWith(
          LoginRequest value, $Res Function(LoginRequest) then) =
      _$LoginRequestCopyWithImpl<$Res, LoginRequest>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginRequestCopyWithImpl<$Res, $Val extends LoginRequest>
    implements $LoginRequestCopyWith<$Res> {
  _$LoginRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginRequestImplCopyWith<$Res>
    implements $LoginRequestCopyWith<$Res> {
  factory _$$LoginRequestImplCopyWith(
          _$LoginRequestImpl value, $Res Function(_$LoginRequestImpl) then) =
      __$$LoginRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginRequestImplCopyWithImpl<$Res>
    extends _$LoginRequestCopyWithImpl<$Res, _$LoginRequestImpl>
    implements _$$LoginRequestImplCopyWith<$Res> {
  __$$LoginRequestImplCopyWithImpl(
      _$LoginRequestImpl _value, $Res Function(_$LoginRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginRequestImpl implements _LoginRequest {
  const _$LoginRequestImpl({required this.email, required this.password});

  factory _$LoginRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginRequestImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginRequest(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginRequestImplCopyWith<_$LoginRequestImpl> get copyWith =>
      __$$LoginRequestImplCopyWithImpl<_$LoginRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginRequestImplToJson(
      this,
    );
  }
}

abstract class _LoginRequest implements LoginRequest {
  const factory _LoginRequest(
      {required final String email,
      required final String password}) = _$LoginRequestImpl;

  factory _LoginRequest.fromJson(Map<String, dynamic> json) =
      _$LoginRequestImpl.fromJson;

  @override
  String get email;
  @override
  String get password;

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginRequestImplCopyWith<_$LoginRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return _LoginResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginResponse {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String? get tokenType => throw _privateConstructorUsedError;
  UserResponse get user => throw _privateConstructorUsedError;

  /// Serializes this LoginResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginResponseCopyWith<LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseCopyWith<$Res> {
  factory $LoginResponseCopyWith(
          LoginResponse value, $Res Function(LoginResponse) then) =
      _$LoginResponseCopyWithImpl<$Res, LoginResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'token_type') String? tokenType,
      UserResponse user});

  $UserResponseCopyWith<$Res> get user;
}

/// @nodoc
class _$LoginResponseCopyWithImpl<$Res, $Val extends LoginResponse>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? tokenType = freezed,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse,
    ) as $Val);
  }

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserResponseCopyWith<$Res> get user {
    return $UserResponseCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginResponseImplCopyWith<$Res>
    implements $LoginResponseCopyWith<$Res> {
  factory _$$LoginResponseImplCopyWith(
          _$LoginResponseImpl value, $Res Function(_$LoginResponseImpl) then) =
      __$$LoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'token_type') String? tokenType,
      UserResponse user});

  @override
  $UserResponseCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoginResponseImplCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res, _$LoginResponseImpl>
    implements _$$LoginResponseImplCopyWith<$Res> {
  __$$LoginResponseImplCopyWithImpl(
      _$LoginResponseImpl _value, $Res Function(_$LoginResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? tokenType = freezed,
    Object? user = null,
  }) {
    return _then(_$LoginResponseImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseImpl implements _LoginResponse {
  const _$LoginResponseImpl(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'refresh_token') required this.refreshToken,
      @JsonKey(name: 'token_type') this.tokenType,
      required this.user});

  factory _$LoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;
  @override
  @JsonKey(name: 'token_type')
  final String? tokenType;
  @override
  final UserResponse user;

  @override
  String toString() {
    return 'LoginResponse(accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, refreshToken, tokenType, user);

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseImplCopyWith<_$LoginResponseImpl> get copyWith =>
      __$$LoginResponseImplCopyWithImpl<_$LoginResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseImplToJson(
      this,
    );
  }
}

abstract class _LoginResponse implements LoginResponse {
  const factory _LoginResponse(
      {@JsonKey(name: 'access_token') required final String accessToken,
      @JsonKey(name: 'refresh_token') required final String refreshToken,
      @JsonKey(name: 'token_type') final String? tokenType,
      required final UserResponse user}) = _$LoginResponseImpl;

  factory _LoginResponse.fromJson(Map<String, dynamic> json) =
      _$LoginResponseImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(name: 'token_type')
  String? get tokenType;
  @override
  UserResponse get user;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginResponseImplCopyWith<_$LoginResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) {
  return _UserResponse.fromJson(json);
}

/// @nodoc
mixin _$UserResponse {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this UserResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserResponseCopyWith<UserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseCopyWith<$Res> {
  factory $UserResponseCopyWith(
          UserResponse value, $Res Function(UserResponse) then) =
      _$UserResponseCopyWithImpl<$Res, UserResponse>;
  @useResult
  $Res call(
      {String id,
      String email,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'full_name') String fullName,
      String? phone,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$UserResponseCopyWithImpl<$Res, $Val extends UserResponse>
    implements $UserResponseCopyWith<$Res> {
  _$UserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? fullName = null,
    Object? phone = freezed,
    Object? profileImage = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserResponseImplCopyWith<$Res>
    implements $UserResponseCopyWith<$Res> {
  factory _$$UserResponseImplCopyWith(
          _$UserResponseImpl value, $Res Function(_$UserResponseImpl) then) =
      __$$UserResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'full_name') String fullName,
      String? phone,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$UserResponseImplCopyWithImpl<$Res>
    extends _$UserResponseCopyWithImpl<$Res, _$UserResponseImpl>
    implements _$$UserResponseImplCopyWith<$Res> {
  __$$UserResponseImplCopyWithImpl(
      _$UserResponseImpl _value, $Res Function(_$UserResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? fullName = null,
    Object? phone = freezed,
    Object? profileImage = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$UserResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserResponseImpl implements _UserResponse {
  const _$UserResponseImpl(
      {required this.id,
      required this.email,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      @JsonKey(name: 'full_name') required this.fullName,
      this.phone,
      @JsonKey(name: 'profile_image') this.profileImage,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$UserResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'profile_image')
  final String? profileImage;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'UserResponse(id: $id, email: $email, firstName: $firstName, lastName: $lastName, fullName: $fullName, phone: $phone, profileImage: $profileImage, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, firstName, lastName,
      fullName, phone, profileImage, createdAt, updatedAt);

  /// Create a copy of UserResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserResponseImplCopyWith<_$UserResponseImpl> get copyWith =>
      __$$UserResponseImplCopyWithImpl<_$UserResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResponseImplToJson(
      this,
    );
  }
}

abstract class _UserResponse implements UserResponse {
  const factory _UserResponse(
          {required final String id,
          required final String email,
          @JsonKey(name: 'first_name') required final String firstName,
          @JsonKey(name: 'last_name') required final String lastName,
          @JsonKey(name: 'full_name') required final String fullName,
          final String? phone,
          @JsonKey(name: 'profile_image') final String? profileImage,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$UserResponseImpl;

  factory _UserResponse.fromJson(Map<String, dynamic> json) =
      _$UserResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'profile_image')
  String? get profileImage;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of UserResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserResponseImplCopyWith<_$UserResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RefreshTokenRequest _$RefreshTokenRequestFromJson(Map<String, dynamic> json) {
  return _RefreshTokenRequest.fromJson(json);
}

/// @nodoc
mixin _$RefreshTokenRequest {
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this RefreshTokenRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefreshTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefreshTokenRequestCopyWith<RefreshTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenRequestCopyWith<$Res> {
  factory $RefreshTokenRequestCopyWith(
          RefreshTokenRequest value, $Res Function(RefreshTokenRequest) then) =
      _$RefreshTokenRequestCopyWithImpl<$Res, RefreshTokenRequest>;
  @useResult
  $Res call({@JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class _$RefreshTokenRequestCopyWithImpl<$Res, $Val extends RefreshTokenRequest>
    implements $RefreshTokenRequestCopyWith<$Res> {
  _$RefreshTokenRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefreshTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefreshTokenRequestImplCopyWith<$Res>
    implements $RefreshTokenRequestCopyWith<$Res> {
  factory _$$RefreshTokenRequestImplCopyWith(_$RefreshTokenRequestImpl value,
          $Res Function(_$RefreshTokenRequestImpl) then) =
      __$$RefreshTokenRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class __$$RefreshTokenRequestImplCopyWithImpl<$Res>
    extends _$RefreshTokenRequestCopyWithImpl<$Res, _$RefreshTokenRequestImpl>
    implements _$$RefreshTokenRequestImplCopyWith<$Res> {
  __$$RefreshTokenRequestImplCopyWithImpl(_$RefreshTokenRequestImpl _value,
      $Res Function(_$RefreshTokenRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefreshTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_$RefreshTokenRequestImpl(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefreshTokenRequestImpl implements _RefreshTokenRequest {
  const _$RefreshTokenRequestImpl(
      {@JsonKey(name: 'refresh_token') required this.refreshToken});

  factory _$RefreshTokenRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefreshTokenRequestImplFromJson(json);

  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @override
  String toString() {
    return 'RefreshTokenRequest(refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshTokenRequestImpl &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  /// Create a copy of RefreshTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshTokenRequestImplCopyWith<_$RefreshTokenRequestImpl> get copyWith =>
      __$$RefreshTokenRequestImplCopyWithImpl<_$RefreshTokenRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshTokenRequestImplToJson(
      this,
    );
  }
}

abstract class _RefreshTokenRequest implements RefreshTokenRequest {
  const factory _RefreshTokenRequest(
      {@JsonKey(name: 'refresh_token')
      required final String refreshToken}) = _$RefreshTokenRequestImpl;

  factory _RefreshTokenRequest.fromJson(Map<String, dynamic> json) =
      _$RefreshTokenRequestImpl.fromJson;

  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;

  /// Create a copy of RefreshTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshTokenRequestImplCopyWith<_$RefreshTokenRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RefreshTokenResponse _$RefreshTokenResponseFromJson(Map<String, dynamic> json) {
  return _RefreshTokenResponse.fromJson(json);
}

/// @nodoc
mixin _$RefreshTokenResponse {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String? get tokenType => throw _privateConstructorUsedError;

  /// Serializes this RefreshTokenResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefreshTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefreshTokenResponseCopyWith<RefreshTokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenResponseCopyWith<$Res> {
  factory $RefreshTokenResponseCopyWith(RefreshTokenResponse value,
          $Res Function(RefreshTokenResponse) then) =
      _$RefreshTokenResponseCopyWithImpl<$Res, RefreshTokenResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'token_type') String? tokenType});
}

/// @nodoc
class _$RefreshTokenResponseCopyWithImpl<$Res,
        $Val extends RefreshTokenResponse>
    implements $RefreshTokenResponseCopyWith<$Res> {
  _$RefreshTokenResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefreshTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? tokenType = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefreshTokenResponseImplCopyWith<$Res>
    implements $RefreshTokenResponseCopyWith<$Res> {
  factory _$$RefreshTokenResponseImplCopyWith(_$RefreshTokenResponseImpl value,
          $Res Function(_$RefreshTokenResponseImpl) then) =
      __$$RefreshTokenResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'token_type') String? tokenType});
}

/// @nodoc
class __$$RefreshTokenResponseImplCopyWithImpl<$Res>
    extends _$RefreshTokenResponseCopyWithImpl<$Res, _$RefreshTokenResponseImpl>
    implements _$$RefreshTokenResponseImplCopyWith<$Res> {
  __$$RefreshTokenResponseImplCopyWithImpl(_$RefreshTokenResponseImpl _value,
      $Res Function(_$RefreshTokenResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefreshTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? tokenType = freezed,
  }) {
    return _then(_$RefreshTokenResponseImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefreshTokenResponseImpl implements _RefreshTokenResponse {
  const _$RefreshTokenResponseImpl(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'refresh_token') required this.refreshToken,
      @JsonKey(name: 'token_type') this.tokenType});

  factory _$RefreshTokenResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefreshTokenResponseImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;
  @override
  @JsonKey(name: 'token_type')
  final String? tokenType;

  @override
  String toString() {
    return 'RefreshTokenResponse(accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshTokenResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, refreshToken, tokenType);

  /// Create a copy of RefreshTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshTokenResponseImplCopyWith<_$RefreshTokenResponseImpl>
      get copyWith =>
          __$$RefreshTokenResponseImplCopyWithImpl<_$RefreshTokenResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshTokenResponseImplToJson(
      this,
    );
  }
}

abstract class _RefreshTokenResponse implements RefreshTokenResponse {
  const factory _RefreshTokenResponse(
          {@JsonKey(name: 'access_token') required final String accessToken,
          @JsonKey(name: 'refresh_token') required final String refreshToken,
          @JsonKey(name: 'token_type') final String? tokenType}) =
      _$RefreshTokenResponseImpl;

  factory _RefreshTokenResponse.fromJson(Map<String, dynamic> json) =
      _$RefreshTokenResponseImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(name: 'token_type')
  String? get tokenType;

  /// Create a copy of RefreshTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshTokenResponseImplCopyWith<_$RefreshTokenResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EventResponse _$EventResponseFromJson(Map<String, dynamic> json) {
  return _EventResponse.fromJson(json);
}

/// @nodoc
mixin _$EventResponse {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  DateTime get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  DateTime get endDate => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'organizer_id')
  String get organizerId => throw _privateConstructorUsedError;
  EventStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_attendees')
  int? get maxAttendees => throw _privateConstructorUsedError;
  @JsonKey(name: 'allow_check_in')
  bool get allowCheckIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'requires_approval')
  bool get requiresApproval => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_email')
  String? get contactEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_phone')
  String? get contactPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'event_metadata')
  Map<String, dynamic>? get eventMetadata => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this EventResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventResponseCopyWith<EventResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventResponseCopyWith<$Res> {
  factory $EventResponseCopyWith(
          EventResponse value, $Res Function(EventResponse) then) =
      _$EventResponseCopyWithImpl<$Res, EventResponse>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      @JsonKey(name: 'start_date') DateTime startDate,
      @JsonKey(name: 'end_date') DateTime endDate,
      String location,
      @JsonKey(name: 'organizer_id') String organizerId,
      EventStatus status,
      @JsonKey(name: 'max_attendees') int? maxAttendees,
      @JsonKey(name: 'allow_check_in') bool allowCheckIn,
      @JsonKey(name: 'requires_approval') bool requiresApproval,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'contact_email') String? contactEmail,
      @JsonKey(name: 'contact_phone') String? contactPhone,
      @JsonKey(name: 'event_metadata') Map<String, dynamic>? eventMetadata,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$EventResponseCopyWithImpl<$Res, $Val extends EventResponse>
    implements $EventResponseCopyWith<$Res> {
  _$EventResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? location = null,
    Object? organizerId = null,
    Object? status = null,
    Object? maxAttendees = freezed,
    Object? allowCheckIn = null,
    Object? requiresApproval = null,
    Object? imageUrl = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? eventMetadata = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      organizerId: null == organizerId
          ? _value.organizerId
          : organizerId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EventStatus,
      maxAttendees: freezed == maxAttendees
          ? _value.maxAttendees
          : maxAttendees // ignore: cast_nullable_to_non_nullable
              as int?,
      allowCheckIn: null == allowCheckIn
          ? _value.allowCheckIn
          : allowCheckIn // ignore: cast_nullable_to_non_nullable
              as bool,
      requiresApproval: null == requiresApproval
          ? _value.requiresApproval
          : requiresApproval // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      eventMetadata: freezed == eventMetadata
          ? _value.eventMetadata
          : eventMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventResponseImplCopyWith<$Res>
    implements $EventResponseCopyWith<$Res> {
  factory _$$EventResponseImplCopyWith(
          _$EventResponseImpl value, $Res Function(_$EventResponseImpl) then) =
      __$$EventResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      @JsonKey(name: 'start_date') DateTime startDate,
      @JsonKey(name: 'end_date') DateTime endDate,
      String location,
      @JsonKey(name: 'organizer_id') String organizerId,
      EventStatus status,
      @JsonKey(name: 'max_attendees') int? maxAttendees,
      @JsonKey(name: 'allow_check_in') bool allowCheckIn,
      @JsonKey(name: 'requires_approval') bool requiresApproval,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'contact_email') String? contactEmail,
      @JsonKey(name: 'contact_phone') String? contactPhone,
      @JsonKey(name: 'event_metadata') Map<String, dynamic>? eventMetadata,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$EventResponseImplCopyWithImpl<$Res>
    extends _$EventResponseCopyWithImpl<$Res, _$EventResponseImpl>
    implements _$$EventResponseImplCopyWith<$Res> {
  __$$EventResponseImplCopyWithImpl(
      _$EventResponseImpl _value, $Res Function(_$EventResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? location = null,
    Object? organizerId = null,
    Object? status = null,
    Object? maxAttendees = freezed,
    Object? allowCheckIn = null,
    Object? requiresApproval = null,
    Object? imageUrl = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? eventMetadata = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$EventResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      organizerId: null == organizerId
          ? _value.organizerId
          : organizerId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EventStatus,
      maxAttendees: freezed == maxAttendees
          ? _value.maxAttendees
          : maxAttendees // ignore: cast_nullable_to_non_nullable
              as int?,
      allowCheckIn: null == allowCheckIn
          ? _value.allowCheckIn
          : allowCheckIn // ignore: cast_nullable_to_non_nullable
              as bool,
      requiresApproval: null == requiresApproval
          ? _value.requiresApproval
          : requiresApproval // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      eventMetadata: freezed == eventMetadata
          ? _value._eventMetadata
          : eventMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventResponseImpl implements _EventResponse {
  const _$EventResponseImpl(
      {required this.id,
      required this.name,
      this.description,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      required this.location,
      @JsonKey(name: 'organizer_id') required this.organizerId,
      required this.status,
      @JsonKey(name: 'max_attendees') this.maxAttendees,
      @JsonKey(name: 'allow_check_in') required this.allowCheckIn,
      @JsonKey(name: 'requires_approval') required this.requiresApproval,
      @JsonKey(name: 'image_url') this.imageUrl,
      @JsonKey(name: 'contact_email') this.contactEmail,
      @JsonKey(name: 'contact_phone') this.contactPhone,
      @JsonKey(name: 'event_metadata')
      final Map<String, dynamic>? eventMetadata,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt})
      : _eventMetadata = eventMetadata;

  factory _$EventResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  @JsonKey(name: 'start_date')
  final DateTime startDate;
  @override
  @JsonKey(name: 'end_date')
  final DateTime endDate;
  @override
  final String location;
  @override
  @JsonKey(name: 'organizer_id')
  final String organizerId;
  @override
  final EventStatus status;
  @override
  @JsonKey(name: 'max_attendees')
  final int? maxAttendees;
  @override
  @JsonKey(name: 'allow_check_in')
  final bool allowCheckIn;
  @override
  @JsonKey(name: 'requires_approval')
  final bool requiresApproval;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(name: 'contact_email')
  final String? contactEmail;
  @override
  @JsonKey(name: 'contact_phone')
  final String? contactPhone;
  final Map<String, dynamic>? _eventMetadata;
  @override
  @JsonKey(name: 'event_metadata')
  Map<String, dynamic>? get eventMetadata {
    final value = _eventMetadata;
    if (value == null) return null;
    if (_eventMetadata is EqualUnmodifiableMapView) return _eventMetadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'EventResponse(id: $id, name: $name, description: $description, startDate: $startDate, endDate: $endDate, location: $location, organizerId: $organizerId, status: $status, maxAttendees: $maxAttendees, allowCheckIn: $allowCheckIn, requiresApproval: $requiresApproval, imageUrl: $imageUrl, contactEmail: $contactEmail, contactPhone: $contactPhone, eventMetadata: $eventMetadata, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.organizerId, organizerId) ||
                other.organizerId == organizerId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.maxAttendees, maxAttendees) ||
                other.maxAttendees == maxAttendees) &&
            (identical(other.allowCheckIn, allowCheckIn) ||
                other.allowCheckIn == allowCheckIn) &&
            (identical(other.requiresApproval, requiresApproval) ||
                other.requiresApproval == requiresApproval) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.contactEmail, contactEmail) ||
                other.contactEmail == contactEmail) &&
            (identical(other.contactPhone, contactPhone) ||
                other.contactPhone == contactPhone) &&
            const DeepCollectionEquality()
                .equals(other._eventMetadata, _eventMetadata) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      startDate,
      endDate,
      location,
      organizerId,
      status,
      maxAttendees,
      allowCheckIn,
      requiresApproval,
      imageUrl,
      contactEmail,
      contactPhone,
      const DeepCollectionEquality().hash(_eventMetadata),
      createdAt,
      updatedAt);

  /// Create a copy of EventResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventResponseImplCopyWith<_$EventResponseImpl> get copyWith =>
      __$$EventResponseImplCopyWithImpl<_$EventResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventResponseImplToJson(
      this,
    );
  }
}

abstract class _EventResponse implements EventResponse {
  const factory _EventResponse(
      {required final String id,
      required final String name,
      final String? description,
      @JsonKey(name: 'start_date') required final DateTime startDate,
      @JsonKey(name: 'end_date') required final DateTime endDate,
      required final String location,
      @JsonKey(name: 'organizer_id') required final String organizerId,
      required final EventStatus status,
      @JsonKey(name: 'max_attendees') final int? maxAttendees,
      @JsonKey(name: 'allow_check_in') required final bool allowCheckIn,
      @JsonKey(name: 'requires_approval') required final bool requiresApproval,
      @JsonKey(name: 'image_url') final String? imageUrl,
      @JsonKey(name: 'contact_email') final String? contactEmail,
      @JsonKey(name: 'contact_phone') final String? contactPhone,
      @JsonKey(name: 'event_metadata')
      final Map<String, dynamic>? eventMetadata,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at')
      required final DateTime updatedAt}) = _$EventResponseImpl;

  factory _EventResponse.fromJson(Map<String, dynamic> json) =
      _$EventResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(name: 'start_date')
  DateTime get startDate;
  @override
  @JsonKey(name: 'end_date')
  DateTime get endDate;
  @override
  String get location;
  @override
  @JsonKey(name: 'organizer_id')
  String get organizerId;
  @override
  EventStatus get status;
  @override
  @JsonKey(name: 'max_attendees')
  int? get maxAttendees;
  @override
  @JsonKey(name: 'allow_check_in')
  bool get allowCheckIn;
  @override
  @JsonKey(name: 'requires_approval')
  bool get requiresApproval;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'contact_email')
  String? get contactEmail;
  @override
  @JsonKey(name: 'contact_phone')
  String? get contactPhone;
  @override
  @JsonKey(name: 'event_metadata')
  Map<String, dynamic>? get eventMetadata;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of EventResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventResponseImplCopyWith<_$EventResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventCreateRequest _$EventCreateRequestFromJson(Map<String, dynamic> json) {
  return _EventCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$EventCreateRequest {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  DateTime get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  DateTime get endDate => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_attendees')
  int? get maxAttendees => throw _privateConstructorUsedError;
  @JsonKey(name: 'allow_check_in')
  bool? get allowCheckIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'requires_approval')
  bool? get requiresApproval => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_email')
  String? get contactEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_phone')
  String? get contactPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'event_metadata')
  Map<String, dynamic>? get eventMetadata => throw _privateConstructorUsedError;

  /// Serializes this EventCreateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventCreateRequestCopyWith<EventCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCreateRequestCopyWith<$Res> {
  factory $EventCreateRequestCopyWith(
          EventCreateRequest value, $Res Function(EventCreateRequest) then) =
      _$EventCreateRequestCopyWithImpl<$Res, EventCreateRequest>;
  @useResult
  $Res call(
      {String name,
      String? description,
      @JsonKey(name: 'start_date') DateTime startDate,
      @JsonKey(name: 'end_date') DateTime endDate,
      String location,
      @JsonKey(name: 'max_attendees') int? maxAttendees,
      @JsonKey(name: 'allow_check_in') bool? allowCheckIn,
      @JsonKey(name: 'requires_approval') bool? requiresApproval,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'contact_email') String? contactEmail,
      @JsonKey(name: 'contact_phone') String? contactPhone,
      @JsonKey(name: 'event_metadata') Map<String, dynamic>? eventMetadata});
}

/// @nodoc
class _$EventCreateRequestCopyWithImpl<$Res, $Val extends EventCreateRequest>
    implements $EventCreateRequestCopyWith<$Res> {
  _$EventCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? location = null,
    Object? maxAttendees = freezed,
    Object? allowCheckIn = freezed,
    Object? requiresApproval = freezed,
    Object? imageUrl = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? eventMetadata = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      maxAttendees: freezed == maxAttendees
          ? _value.maxAttendees
          : maxAttendees // ignore: cast_nullable_to_non_nullable
              as int?,
      allowCheckIn: freezed == allowCheckIn
          ? _value.allowCheckIn
          : allowCheckIn // ignore: cast_nullable_to_non_nullable
              as bool?,
      requiresApproval: freezed == requiresApproval
          ? _value.requiresApproval
          : requiresApproval // ignore: cast_nullable_to_non_nullable
              as bool?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      eventMetadata: freezed == eventMetadata
          ? _value.eventMetadata
          : eventMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventCreateRequestImplCopyWith<$Res>
    implements $EventCreateRequestCopyWith<$Res> {
  factory _$$EventCreateRequestImplCopyWith(_$EventCreateRequestImpl value,
          $Res Function(_$EventCreateRequestImpl) then) =
      __$$EventCreateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? description,
      @JsonKey(name: 'start_date') DateTime startDate,
      @JsonKey(name: 'end_date') DateTime endDate,
      String location,
      @JsonKey(name: 'max_attendees') int? maxAttendees,
      @JsonKey(name: 'allow_check_in') bool? allowCheckIn,
      @JsonKey(name: 'requires_approval') bool? requiresApproval,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'contact_email') String? contactEmail,
      @JsonKey(name: 'contact_phone') String? contactPhone,
      @JsonKey(name: 'event_metadata') Map<String, dynamic>? eventMetadata});
}

/// @nodoc
class __$$EventCreateRequestImplCopyWithImpl<$Res>
    extends _$EventCreateRequestCopyWithImpl<$Res, _$EventCreateRequestImpl>
    implements _$$EventCreateRequestImplCopyWith<$Res> {
  __$$EventCreateRequestImplCopyWithImpl(_$EventCreateRequestImpl _value,
      $Res Function(_$EventCreateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? location = null,
    Object? maxAttendees = freezed,
    Object? allowCheckIn = freezed,
    Object? requiresApproval = freezed,
    Object? imageUrl = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? eventMetadata = freezed,
  }) {
    return _then(_$EventCreateRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      maxAttendees: freezed == maxAttendees
          ? _value.maxAttendees
          : maxAttendees // ignore: cast_nullable_to_non_nullable
              as int?,
      allowCheckIn: freezed == allowCheckIn
          ? _value.allowCheckIn
          : allowCheckIn // ignore: cast_nullable_to_non_nullable
              as bool?,
      requiresApproval: freezed == requiresApproval
          ? _value.requiresApproval
          : requiresApproval // ignore: cast_nullable_to_non_nullable
              as bool?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      eventMetadata: freezed == eventMetadata
          ? _value._eventMetadata
          : eventMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventCreateRequestImpl implements _EventCreateRequest {
  const _$EventCreateRequestImpl(
      {required this.name,
      this.description,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      required this.location,
      @JsonKey(name: 'max_attendees') this.maxAttendees,
      @JsonKey(name: 'allow_check_in') this.allowCheckIn,
      @JsonKey(name: 'requires_approval') this.requiresApproval,
      @JsonKey(name: 'image_url') this.imageUrl,
      @JsonKey(name: 'contact_email') this.contactEmail,
      @JsonKey(name: 'contact_phone') this.contactPhone,
      @JsonKey(name: 'event_metadata')
      final Map<String, dynamic>? eventMetadata})
      : _eventMetadata = eventMetadata;

  factory _$EventCreateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventCreateRequestImplFromJson(json);

  @override
  final String name;
  @override
  final String? description;
  @override
  @JsonKey(name: 'start_date')
  final DateTime startDate;
  @override
  @JsonKey(name: 'end_date')
  final DateTime endDate;
  @override
  final String location;
  @override
  @JsonKey(name: 'max_attendees')
  final int? maxAttendees;
  @override
  @JsonKey(name: 'allow_check_in')
  final bool? allowCheckIn;
  @override
  @JsonKey(name: 'requires_approval')
  final bool? requiresApproval;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(name: 'contact_email')
  final String? contactEmail;
  @override
  @JsonKey(name: 'contact_phone')
  final String? contactPhone;
  final Map<String, dynamic>? _eventMetadata;
  @override
  @JsonKey(name: 'event_metadata')
  Map<String, dynamic>? get eventMetadata {
    final value = _eventMetadata;
    if (value == null) return null;
    if (_eventMetadata is EqualUnmodifiableMapView) return _eventMetadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'EventCreateRequest(name: $name, description: $description, startDate: $startDate, endDate: $endDate, location: $location, maxAttendees: $maxAttendees, allowCheckIn: $allowCheckIn, requiresApproval: $requiresApproval, imageUrl: $imageUrl, contactEmail: $contactEmail, contactPhone: $contactPhone, eventMetadata: $eventMetadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventCreateRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.maxAttendees, maxAttendees) ||
                other.maxAttendees == maxAttendees) &&
            (identical(other.allowCheckIn, allowCheckIn) ||
                other.allowCheckIn == allowCheckIn) &&
            (identical(other.requiresApproval, requiresApproval) ||
                other.requiresApproval == requiresApproval) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.contactEmail, contactEmail) ||
                other.contactEmail == contactEmail) &&
            (identical(other.contactPhone, contactPhone) ||
                other.contactPhone == contactPhone) &&
            const DeepCollectionEquality()
                .equals(other._eventMetadata, _eventMetadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      startDate,
      endDate,
      location,
      maxAttendees,
      allowCheckIn,
      requiresApproval,
      imageUrl,
      contactEmail,
      contactPhone,
      const DeepCollectionEquality().hash(_eventMetadata));

  /// Create a copy of EventCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventCreateRequestImplCopyWith<_$EventCreateRequestImpl> get copyWith =>
      __$$EventCreateRequestImplCopyWithImpl<_$EventCreateRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventCreateRequestImplToJson(
      this,
    );
  }
}

abstract class _EventCreateRequest implements EventCreateRequest {
  const factory _EventCreateRequest(
      {required final String name,
      final String? description,
      @JsonKey(name: 'start_date') required final DateTime startDate,
      @JsonKey(name: 'end_date') required final DateTime endDate,
      required final String location,
      @JsonKey(name: 'max_attendees') final int? maxAttendees,
      @JsonKey(name: 'allow_check_in') final bool? allowCheckIn,
      @JsonKey(name: 'requires_approval') final bool? requiresApproval,
      @JsonKey(name: 'image_url') final String? imageUrl,
      @JsonKey(name: 'contact_email') final String? contactEmail,
      @JsonKey(name: 'contact_phone') final String? contactPhone,
      @JsonKey(name: 'event_metadata')
      final Map<String, dynamic>? eventMetadata}) = _$EventCreateRequestImpl;

  factory _EventCreateRequest.fromJson(Map<String, dynamic> json) =
      _$EventCreateRequestImpl.fromJson;

  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(name: 'start_date')
  DateTime get startDate;
  @override
  @JsonKey(name: 'end_date')
  DateTime get endDate;
  @override
  String get location;
  @override
  @JsonKey(name: 'max_attendees')
  int? get maxAttendees;
  @override
  @JsonKey(name: 'allow_check_in')
  bool? get allowCheckIn;
  @override
  @JsonKey(name: 'requires_approval')
  bool? get requiresApproval;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'contact_email')
  String? get contactEmail;
  @override
  @JsonKey(name: 'contact_phone')
  String? get contactPhone;
  @override
  @JsonKey(name: 'event_metadata')
  Map<String, dynamic>? get eventMetadata;

  /// Create a copy of EventCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventCreateRequestImplCopyWith<_$EventCreateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventListResponse _$EventListResponseFromJson(Map<String, dynamic> json) {
  return _EventListResponse.fromJson(json);
}

/// @nodoc
mixin _$EventListResponse {
  List<EventResponse> get events => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_next')
  bool get hasNext => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_previous')
  bool get hasPrevious => throw _privateConstructorUsedError;

  /// Serializes this EventListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventListResponseCopyWith<EventListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventListResponseCopyWith<$Res> {
  factory $EventListResponseCopyWith(
          EventListResponse value, $Res Function(EventListResponse) then) =
      _$EventListResponseCopyWithImpl<$Res, EventListResponse>;
  @useResult
  $Res call(
      {List<EventResponse> events,
      int total,
      int page,
      int size,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'has_next') bool hasNext,
      @JsonKey(name: 'has_previous') bool hasPrevious});
}

/// @nodoc
class _$EventListResponseCopyWithImpl<$Res, $Val extends EventListResponse>
    implements $EventListResponseCopyWith<$Res> {
  _$EventListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? total = null,
    Object? page = null,
    Object? size = null,
    Object? totalPages = null,
    Object? hasNext = null,
    Object? hasPrevious = null,
  }) {
    return _then(_value.copyWith(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventResponse>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrevious: null == hasPrevious
          ? _value.hasPrevious
          : hasPrevious // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventListResponseImplCopyWith<$Res>
    implements $EventListResponseCopyWith<$Res> {
  factory _$$EventListResponseImplCopyWith(_$EventListResponseImpl value,
          $Res Function(_$EventListResponseImpl) then) =
      __$$EventListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<EventResponse> events,
      int total,
      int page,
      int size,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'has_next') bool hasNext,
      @JsonKey(name: 'has_previous') bool hasPrevious});
}

/// @nodoc
class __$$EventListResponseImplCopyWithImpl<$Res>
    extends _$EventListResponseCopyWithImpl<$Res, _$EventListResponseImpl>
    implements _$$EventListResponseImplCopyWith<$Res> {
  __$$EventListResponseImplCopyWithImpl(_$EventListResponseImpl _value,
      $Res Function(_$EventListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? total = null,
    Object? page = null,
    Object? size = null,
    Object? totalPages = null,
    Object? hasNext = null,
    Object? hasPrevious = null,
  }) {
    return _then(_$EventListResponseImpl(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventResponse>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrevious: null == hasPrevious
          ? _value.hasPrevious
          : hasPrevious // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventListResponseImpl implements _EventListResponse {
  const _$EventListResponseImpl(
      {required final List<EventResponse> events,
      required this.total,
      required this.page,
      required this.size,
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'has_next') required this.hasNext,
      @JsonKey(name: 'has_previous') required this.hasPrevious})
      : _events = events;

  factory _$EventListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventListResponseImplFromJson(json);

  final List<EventResponse> _events;
  @override
  List<EventResponse> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  final int total;
  @override
  final int page;
  @override
  final int size;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'has_next')
  final bool hasNext;
  @override
  @JsonKey(name: 'has_previous')
  final bool hasPrevious;

  @override
  String toString() {
    return 'EventListResponse(events: $events, total: $total, page: $page, size: $size, totalPages: $totalPages, hasNext: $hasNext, hasPrevious: $hasPrevious)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventListResponseImpl &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.hasPrevious, hasPrevious) ||
                other.hasPrevious == hasPrevious));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_events),
      total,
      page,
      size,
      totalPages,
      hasNext,
      hasPrevious);

  /// Create a copy of EventListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventListResponseImplCopyWith<_$EventListResponseImpl> get copyWith =>
      __$$EventListResponseImplCopyWithImpl<_$EventListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventListResponseImplToJson(
      this,
    );
  }
}

abstract class _EventListResponse implements EventListResponse {
  const factory _EventListResponse(
          {required final List<EventResponse> events,
          required final int total,
          required final int page,
          required final int size,
          @JsonKey(name: 'total_pages') required final int totalPages,
          @JsonKey(name: 'has_next') required final bool hasNext,
          @JsonKey(name: 'has_previous') required final bool hasPrevious}) =
      _$EventListResponseImpl;

  factory _EventListResponse.fromJson(Map<String, dynamic> json) =
      _$EventListResponseImpl.fromJson;

  @override
  List<EventResponse> get events;
  @override
  int get total;
  @override
  int get page;
  @override
  int get size;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'has_next')
  bool get hasNext;
  @override
  @JsonKey(name: 'has_previous')
  bool get hasPrevious;

  /// Create a copy of EventListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventListResponseImplCopyWith<_$EventListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttendeeResponse _$AttendeeResponseFromJson(Map<String, dynamic> json) {
  return _AttendeeResponse.fromJson(json);
}

/// @nodoc
mixin _$AttendeeResponse {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'event_id')
  String get eventId => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  AttendeeStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'registration_date')
  DateTime get registrationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'confirmation_date')
  DateTime? get confirmationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'check_in_date')
  DateTime? get checkInDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'qr_code')
  String? get qrCode => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'custom_fields')
  Map<String, dynamic>? get customFields => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this AttendeeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendeeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendeeResponseCopyWith<AttendeeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendeeResponseCopyWith<$Res> {
  factory $AttendeeResponseCopyWith(
          AttendeeResponse value, $Res Function(AttendeeResponse) then) =
      _$AttendeeResponseCopyWithImpl<$Res, AttendeeResponse>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'event_id') String eventId,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'full_name') String fullName,
      String email,
      String? phone,
      AttendeeStatus status,
      @JsonKey(name: 'registration_date') DateTime registrationDate,
      @JsonKey(name: 'confirmation_date') DateTime? confirmationDate,
      @JsonKey(name: 'check_in_date') DateTime? checkInDate,
      @JsonKey(name: 'qr_code') String? qrCode,
      String? notes,
      @JsonKey(name: 'custom_fields') Map<String, dynamic>? customFields,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$AttendeeResponseCopyWithImpl<$Res, $Val extends AttendeeResponse>
    implements $AttendeeResponseCopyWith<$Res> {
  _$AttendeeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendeeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? fullName = null,
    Object? email = null,
    Object? phone = freezed,
    Object? status = null,
    Object? registrationDate = null,
    Object? confirmationDate = freezed,
    Object? checkInDate = freezed,
    Object? qrCode = freezed,
    Object? notes = freezed,
    Object? customFields = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AttendeeStatus,
      registrationDate: null == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      confirmationDate: freezed == confirmationDate
          ? _value.confirmationDate
          : confirmationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      checkInDate: freezed == checkInDate
          ? _value.checkInDate
          : checkInDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      customFields: freezed == customFields
          ? _value.customFields
          : customFields // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendeeResponseImplCopyWith<$Res>
    implements $AttendeeResponseCopyWith<$Res> {
  factory _$$AttendeeResponseImplCopyWith(_$AttendeeResponseImpl value,
          $Res Function(_$AttendeeResponseImpl) then) =
      __$$AttendeeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'event_id') String eventId,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'full_name') String fullName,
      String email,
      String? phone,
      AttendeeStatus status,
      @JsonKey(name: 'registration_date') DateTime registrationDate,
      @JsonKey(name: 'confirmation_date') DateTime? confirmationDate,
      @JsonKey(name: 'check_in_date') DateTime? checkInDate,
      @JsonKey(name: 'qr_code') String? qrCode,
      String? notes,
      @JsonKey(name: 'custom_fields') Map<String, dynamic>? customFields,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$AttendeeResponseImplCopyWithImpl<$Res>
    extends _$AttendeeResponseCopyWithImpl<$Res, _$AttendeeResponseImpl>
    implements _$$AttendeeResponseImplCopyWith<$Res> {
  __$$AttendeeResponseImplCopyWithImpl(_$AttendeeResponseImpl _value,
      $Res Function(_$AttendeeResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? fullName = null,
    Object? email = null,
    Object? phone = freezed,
    Object? status = null,
    Object? registrationDate = null,
    Object? confirmationDate = freezed,
    Object? checkInDate = freezed,
    Object? qrCode = freezed,
    Object? notes = freezed,
    Object? customFields = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$AttendeeResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AttendeeStatus,
      registrationDate: null == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      confirmationDate: freezed == confirmationDate
          ? _value.confirmationDate
          : confirmationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      checkInDate: freezed == checkInDate
          ? _value.checkInDate
          : checkInDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      customFields: freezed == customFields
          ? _value._customFields
          : customFields // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendeeResponseImpl implements _AttendeeResponse {
  const _$AttendeeResponseImpl(
      {required this.id,
      @JsonKey(name: 'event_id') required this.eventId,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      @JsonKey(name: 'full_name') required this.fullName,
      required this.email,
      this.phone,
      required this.status,
      @JsonKey(name: 'registration_date') required this.registrationDate,
      @JsonKey(name: 'confirmation_date') this.confirmationDate,
      @JsonKey(name: 'check_in_date') this.checkInDate,
      @JsonKey(name: 'qr_code') this.qrCode,
      this.notes,
      @JsonKey(name: 'custom_fields') final Map<String, dynamic>? customFields,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt})
      : _customFields = customFields;

  factory _$AttendeeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendeeResponseImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'event_id')
  final String eventId;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  final String email;
  @override
  final String? phone;
  @override
  final AttendeeStatus status;
  @override
  @JsonKey(name: 'registration_date')
  final DateTime registrationDate;
  @override
  @JsonKey(name: 'confirmation_date')
  final DateTime? confirmationDate;
  @override
  @JsonKey(name: 'check_in_date')
  final DateTime? checkInDate;
  @override
  @JsonKey(name: 'qr_code')
  final String? qrCode;
  @override
  final String? notes;
  final Map<String, dynamic>? _customFields;
  @override
  @JsonKey(name: 'custom_fields')
  Map<String, dynamic>? get customFields {
    final value = _customFields;
    if (value == null) return null;
    if (_customFields is EqualUnmodifiableMapView) return _customFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'AttendeeResponse(id: $id, eventId: $eventId, firstName: $firstName, lastName: $lastName, fullName: $fullName, email: $email, phone: $phone, status: $status, registrationDate: $registrationDate, confirmationDate: $confirmationDate, checkInDate: $checkInDate, qrCode: $qrCode, notes: $notes, customFields: $customFields, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendeeResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.registrationDate, registrationDate) ||
                other.registrationDate == registrationDate) &&
            (identical(other.confirmationDate, confirmationDate) ||
                other.confirmationDate == confirmationDate) &&
            (identical(other.checkInDate, checkInDate) ||
                other.checkInDate == checkInDate) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._customFields, _customFields) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      eventId,
      firstName,
      lastName,
      fullName,
      email,
      phone,
      status,
      registrationDate,
      confirmationDate,
      checkInDate,
      qrCode,
      notes,
      const DeepCollectionEquality().hash(_customFields),
      createdAt,
      updatedAt);

  /// Create a copy of AttendeeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendeeResponseImplCopyWith<_$AttendeeResponseImpl> get copyWith =>
      __$$AttendeeResponseImplCopyWithImpl<_$AttendeeResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendeeResponseImplToJson(
      this,
    );
  }
}

abstract class _AttendeeResponse implements AttendeeResponse {
  const factory _AttendeeResponse(
      {required final String id,
      @JsonKey(name: 'event_id') required final String eventId,
      @JsonKey(name: 'first_name') required final String firstName,
      @JsonKey(name: 'last_name') required final String lastName,
      @JsonKey(name: 'full_name') required final String fullName,
      required final String email,
      final String? phone,
      required final AttendeeStatus status,
      @JsonKey(name: 'registration_date')
      required final DateTime registrationDate,
      @JsonKey(name: 'confirmation_date') final DateTime? confirmationDate,
      @JsonKey(name: 'check_in_date') final DateTime? checkInDate,
      @JsonKey(name: 'qr_code') final String? qrCode,
      final String? notes,
      @JsonKey(name: 'custom_fields') final Map<String, dynamic>? customFields,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at')
      required final DateTime updatedAt}) = _$AttendeeResponseImpl;

  factory _AttendeeResponse.fromJson(Map<String, dynamic> json) =
      _$AttendeeResponseImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'event_id')
  String get eventId;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  String get email;
  @override
  String? get phone;
  @override
  AttendeeStatus get status;
  @override
  @JsonKey(name: 'registration_date')
  DateTime get registrationDate;
  @override
  @JsonKey(name: 'confirmation_date')
  DateTime? get confirmationDate;
  @override
  @JsonKey(name: 'check_in_date')
  DateTime? get checkInDate;
  @override
  @JsonKey(name: 'qr_code')
  String? get qrCode;
  @override
  String? get notes;
  @override
  @JsonKey(name: 'custom_fields')
  Map<String, dynamic>? get customFields;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of AttendeeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendeeResponseImplCopyWith<_$AttendeeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttendeeListResponse _$AttendeeListResponseFromJson(Map<String, dynamic> json) {
  return _AttendeeListResponse.fromJson(json);
}

/// @nodoc
mixin _$AttendeeListResponse {
  List<AttendeeResponse> get attendees => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_next')
  bool get hasNext => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_previous')
  bool get hasPrevious => throw _privateConstructorUsedError;
  Map<String, dynamic> get stats => throw _privateConstructorUsedError;

  /// Serializes this AttendeeListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendeeListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendeeListResponseCopyWith<AttendeeListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendeeListResponseCopyWith<$Res> {
  factory $AttendeeListResponseCopyWith(AttendeeListResponse value,
          $Res Function(AttendeeListResponse) then) =
      _$AttendeeListResponseCopyWithImpl<$Res, AttendeeListResponse>;
  @useResult
  $Res call(
      {List<AttendeeResponse> attendees,
      int total,
      int page,
      int size,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'has_next') bool hasNext,
      @JsonKey(name: 'has_previous') bool hasPrevious,
      Map<String, dynamic> stats});
}

/// @nodoc
class _$AttendeeListResponseCopyWithImpl<$Res,
        $Val extends AttendeeListResponse>
    implements $AttendeeListResponseCopyWith<$Res> {
  _$AttendeeListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendeeListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendees = null,
    Object? total = null,
    Object? page = null,
    Object? size = null,
    Object? totalPages = null,
    Object? hasNext = null,
    Object? hasPrevious = null,
    Object? stats = null,
  }) {
    return _then(_value.copyWith(
      attendees: null == attendees
          ? _value.attendees
          : attendees // ignore: cast_nullable_to_non_nullable
              as List<AttendeeResponse>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrevious: null == hasPrevious
          ? _value.hasPrevious
          : hasPrevious // ignore: cast_nullable_to_non_nullable
              as bool,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendeeListResponseImplCopyWith<$Res>
    implements $AttendeeListResponseCopyWith<$Res> {
  factory _$$AttendeeListResponseImplCopyWith(_$AttendeeListResponseImpl value,
          $Res Function(_$AttendeeListResponseImpl) then) =
      __$$AttendeeListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AttendeeResponse> attendees,
      int total,
      int page,
      int size,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'has_next') bool hasNext,
      @JsonKey(name: 'has_previous') bool hasPrevious,
      Map<String, dynamic> stats});
}

/// @nodoc
class __$$AttendeeListResponseImplCopyWithImpl<$Res>
    extends _$AttendeeListResponseCopyWithImpl<$Res, _$AttendeeListResponseImpl>
    implements _$$AttendeeListResponseImplCopyWith<$Res> {
  __$$AttendeeListResponseImplCopyWithImpl(_$AttendeeListResponseImpl _value,
      $Res Function(_$AttendeeListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendees = null,
    Object? total = null,
    Object? page = null,
    Object? size = null,
    Object? totalPages = null,
    Object? hasNext = null,
    Object? hasPrevious = null,
    Object? stats = null,
  }) {
    return _then(_$AttendeeListResponseImpl(
      attendees: null == attendees
          ? _value._attendees
          : attendees // ignore: cast_nullable_to_non_nullable
              as List<AttendeeResponse>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrevious: null == hasPrevious
          ? _value.hasPrevious
          : hasPrevious // ignore: cast_nullable_to_non_nullable
              as bool,
      stats: null == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendeeListResponseImpl implements _AttendeeListResponse {
  const _$AttendeeListResponseImpl(
      {required final List<AttendeeResponse> attendees,
      required this.total,
      required this.page,
      required this.size,
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'has_next') required this.hasNext,
      @JsonKey(name: 'has_previous') required this.hasPrevious,
      required final Map<String, dynamic> stats})
      : _attendees = attendees,
        _stats = stats;

  factory _$AttendeeListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendeeListResponseImplFromJson(json);

  final List<AttendeeResponse> _attendees;
  @override
  List<AttendeeResponse> get attendees {
    if (_attendees is EqualUnmodifiableListView) return _attendees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendees);
  }

  @override
  final int total;
  @override
  final int page;
  @override
  final int size;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'has_next')
  final bool hasNext;
  @override
  @JsonKey(name: 'has_previous')
  final bool hasPrevious;
  final Map<String, dynamic> _stats;
  @override
  Map<String, dynamic> get stats {
    if (_stats is EqualUnmodifiableMapView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_stats);
  }

  @override
  String toString() {
    return 'AttendeeListResponse(attendees: $attendees, total: $total, page: $page, size: $size, totalPages: $totalPages, hasNext: $hasNext, hasPrevious: $hasPrevious, stats: $stats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendeeListResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._attendees, _attendees) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.hasPrevious, hasPrevious) ||
                other.hasPrevious == hasPrevious) &&
            const DeepCollectionEquality().equals(other._stats, _stats));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_attendees),
      total,
      page,
      size,
      totalPages,
      hasNext,
      hasPrevious,
      const DeepCollectionEquality().hash(_stats));

  /// Create a copy of AttendeeListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendeeListResponseImplCopyWith<_$AttendeeListResponseImpl>
      get copyWith =>
          __$$AttendeeListResponseImplCopyWithImpl<_$AttendeeListResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendeeListResponseImplToJson(
      this,
    );
  }
}

abstract class _AttendeeListResponse implements AttendeeListResponse {
  const factory _AttendeeListResponse(
      {required final List<AttendeeResponse> attendees,
      required final int total,
      required final int page,
      required final int size,
      @JsonKey(name: 'total_pages') required final int totalPages,
      @JsonKey(name: 'has_next') required final bool hasNext,
      @JsonKey(name: 'has_previous') required final bool hasPrevious,
      required final Map<String, dynamic> stats}) = _$AttendeeListResponseImpl;

  factory _AttendeeListResponse.fromJson(Map<String, dynamic> json) =
      _$AttendeeListResponseImpl.fromJson;

  @override
  List<AttendeeResponse> get attendees;
  @override
  int get total;
  @override
  int get page;
  @override
  int get size;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'has_next')
  bool get hasNext;
  @override
  @JsonKey(name: 'has_previous')
  bool get hasPrevious;
  @override
  Map<String, dynamic> get stats;

  /// Create a copy of AttendeeListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendeeListResponseImplCopyWith<_$AttendeeListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AttendeeStatsResponse _$AttendeeStatsResponseFromJson(
    Map<String, dynamic> json) {
  return _AttendeeStatsResponse.fromJson(json);
}

/// @nodoc
mixin _$AttendeeStatsResponse {
  @JsonKey(name: 'event_id')
  String get eventId => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get registered => throw _privateConstructorUsedError;
  int get confirmed => throw _privateConstructorUsedError;
  @JsonKey(name: 'checked_in')
  int get checkedIn => throw _privateConstructorUsedError;
  int get cancelled => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_show')
  int get noShow => throw _privateConstructorUsedError;
  @JsonKey(name: 'check_in_rate')
  double get checkInRate => throw _privateConstructorUsedError;

  /// Serializes this AttendeeStatsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendeeStatsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendeeStatsResponseCopyWith<AttendeeStatsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendeeStatsResponseCopyWith<$Res> {
  factory $AttendeeStatsResponseCopyWith(AttendeeStatsResponse value,
          $Res Function(AttendeeStatsResponse) then) =
      _$AttendeeStatsResponseCopyWithImpl<$Res, AttendeeStatsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'event_id') String eventId,
      int total,
      int registered,
      int confirmed,
      @JsonKey(name: 'checked_in') int checkedIn,
      int cancelled,
      @JsonKey(name: 'no_show') int noShow,
      @JsonKey(name: 'check_in_rate') double checkInRate});
}

/// @nodoc
class _$AttendeeStatsResponseCopyWithImpl<$Res,
        $Val extends AttendeeStatsResponse>
    implements $AttendeeStatsResponseCopyWith<$Res> {
  _$AttendeeStatsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendeeStatsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? total = null,
    Object? registered = null,
    Object? confirmed = null,
    Object? checkedIn = null,
    Object? cancelled = null,
    Object? noShow = null,
    Object? checkInRate = null,
  }) {
    return _then(_value.copyWith(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      registered: null == registered
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as int,
      confirmed: null == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as int,
      checkedIn: null == checkedIn
          ? _value.checkedIn
          : checkedIn // ignore: cast_nullable_to_non_nullable
              as int,
      cancelled: null == cancelled
          ? _value.cancelled
          : cancelled // ignore: cast_nullable_to_non_nullable
              as int,
      noShow: null == noShow
          ? _value.noShow
          : noShow // ignore: cast_nullable_to_non_nullable
              as int,
      checkInRate: null == checkInRate
          ? _value.checkInRate
          : checkInRate // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendeeStatsResponseImplCopyWith<$Res>
    implements $AttendeeStatsResponseCopyWith<$Res> {
  factory _$$AttendeeStatsResponseImplCopyWith(
          _$AttendeeStatsResponseImpl value,
          $Res Function(_$AttendeeStatsResponseImpl) then) =
      __$$AttendeeStatsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'event_id') String eventId,
      int total,
      int registered,
      int confirmed,
      @JsonKey(name: 'checked_in') int checkedIn,
      int cancelled,
      @JsonKey(name: 'no_show') int noShow,
      @JsonKey(name: 'check_in_rate') double checkInRate});
}

/// @nodoc
class __$$AttendeeStatsResponseImplCopyWithImpl<$Res>
    extends _$AttendeeStatsResponseCopyWithImpl<$Res,
        _$AttendeeStatsResponseImpl>
    implements _$$AttendeeStatsResponseImplCopyWith<$Res> {
  __$$AttendeeStatsResponseImplCopyWithImpl(_$AttendeeStatsResponseImpl _value,
      $Res Function(_$AttendeeStatsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeStatsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? total = null,
    Object? registered = null,
    Object? confirmed = null,
    Object? checkedIn = null,
    Object? cancelled = null,
    Object? noShow = null,
    Object? checkInRate = null,
  }) {
    return _then(_$AttendeeStatsResponseImpl(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      registered: null == registered
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as int,
      confirmed: null == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as int,
      checkedIn: null == checkedIn
          ? _value.checkedIn
          : checkedIn // ignore: cast_nullable_to_non_nullable
              as int,
      cancelled: null == cancelled
          ? _value.cancelled
          : cancelled // ignore: cast_nullable_to_non_nullable
              as int,
      noShow: null == noShow
          ? _value.noShow
          : noShow // ignore: cast_nullable_to_non_nullable
              as int,
      checkInRate: null == checkInRate
          ? _value.checkInRate
          : checkInRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendeeStatsResponseImpl implements _AttendeeStatsResponse {
  const _$AttendeeStatsResponseImpl(
      {@JsonKey(name: 'event_id') required this.eventId,
      required this.total,
      required this.registered,
      required this.confirmed,
      @JsonKey(name: 'checked_in') required this.checkedIn,
      required this.cancelled,
      @JsonKey(name: 'no_show') required this.noShow,
      @JsonKey(name: 'check_in_rate') required this.checkInRate});

  factory _$AttendeeStatsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendeeStatsResponseImplFromJson(json);

  @override
  @JsonKey(name: 'event_id')
  final String eventId;
  @override
  final int total;
  @override
  final int registered;
  @override
  final int confirmed;
  @override
  @JsonKey(name: 'checked_in')
  final int checkedIn;
  @override
  final int cancelled;
  @override
  @JsonKey(name: 'no_show')
  final int noShow;
  @override
  @JsonKey(name: 'check_in_rate')
  final double checkInRate;

  @override
  String toString() {
    return 'AttendeeStatsResponse(eventId: $eventId, total: $total, registered: $registered, confirmed: $confirmed, checkedIn: $checkedIn, cancelled: $cancelled, noShow: $noShow, checkInRate: $checkInRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendeeStatsResponseImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.registered, registered) ||
                other.registered == registered) &&
            (identical(other.confirmed, confirmed) ||
                other.confirmed == confirmed) &&
            (identical(other.checkedIn, checkedIn) ||
                other.checkedIn == checkedIn) &&
            (identical(other.cancelled, cancelled) ||
                other.cancelled == cancelled) &&
            (identical(other.noShow, noShow) || other.noShow == noShow) &&
            (identical(other.checkInRate, checkInRate) ||
                other.checkInRate == checkInRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, eventId, total, registered,
      confirmed, checkedIn, cancelled, noShow, checkInRate);

  /// Create a copy of AttendeeStatsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendeeStatsResponseImplCopyWith<_$AttendeeStatsResponseImpl>
      get copyWith => __$$AttendeeStatsResponseImplCopyWithImpl<
          _$AttendeeStatsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendeeStatsResponseImplToJson(
      this,
    );
  }
}

abstract class _AttendeeStatsResponse implements AttendeeStatsResponse {
  const factory _AttendeeStatsResponse(
          {@JsonKey(name: 'event_id') required final String eventId,
          required final int total,
          required final int registered,
          required final int confirmed,
          @JsonKey(name: 'checked_in') required final int checkedIn,
          required final int cancelled,
          @JsonKey(name: 'no_show') required final int noShow,
          @JsonKey(name: 'check_in_rate') required final double checkInRate}) =
      _$AttendeeStatsResponseImpl;

  factory _AttendeeStatsResponse.fromJson(Map<String, dynamic> json) =
      _$AttendeeStatsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'event_id')
  String get eventId;
  @override
  int get total;
  @override
  int get registered;
  @override
  int get confirmed;
  @override
  @JsonKey(name: 'checked_in')
  int get checkedIn;
  @override
  int get cancelled;
  @override
  @JsonKey(name: 'no_show')
  int get noShow;
  @override
  @JsonKey(name: 'check_in_rate')
  double get checkInRate;

  /// Create a copy of AttendeeStatsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendeeStatsResponseImplCopyWith<_$AttendeeStatsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

QRCodeValidateRequest _$QRCodeValidateRequestFromJson(
    Map<String, dynamic> json) {
  return _QRCodeValidateRequest.fromJson(json);
}

/// @nodoc
mixin _$QRCodeValidateRequest {
  @JsonKey(name: 'qr_code')
  String get qrCode => throw _privateConstructorUsedError;

  /// Serializes this QRCodeValidateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QRCodeValidateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QRCodeValidateRequestCopyWith<QRCodeValidateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QRCodeValidateRequestCopyWith<$Res> {
  factory $QRCodeValidateRequestCopyWith(QRCodeValidateRequest value,
          $Res Function(QRCodeValidateRequest) then) =
      _$QRCodeValidateRequestCopyWithImpl<$Res, QRCodeValidateRequest>;
  @useResult
  $Res call({@JsonKey(name: 'qr_code') String qrCode});
}

/// @nodoc
class _$QRCodeValidateRequestCopyWithImpl<$Res,
        $Val extends QRCodeValidateRequest>
    implements $QRCodeValidateRequestCopyWith<$Res> {
  _$QRCodeValidateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QRCodeValidateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qrCode = null,
  }) {
    return _then(_value.copyWith(
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QRCodeValidateRequestImplCopyWith<$Res>
    implements $QRCodeValidateRequestCopyWith<$Res> {
  factory _$$QRCodeValidateRequestImplCopyWith(
          _$QRCodeValidateRequestImpl value,
          $Res Function(_$QRCodeValidateRequestImpl) then) =
      __$$QRCodeValidateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'qr_code') String qrCode});
}

/// @nodoc
class __$$QRCodeValidateRequestImplCopyWithImpl<$Res>
    extends _$QRCodeValidateRequestCopyWithImpl<$Res,
        _$QRCodeValidateRequestImpl>
    implements _$$QRCodeValidateRequestImplCopyWith<$Res> {
  __$$QRCodeValidateRequestImplCopyWithImpl(_$QRCodeValidateRequestImpl _value,
      $Res Function(_$QRCodeValidateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of QRCodeValidateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qrCode = null,
  }) {
    return _then(_$QRCodeValidateRequestImpl(
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QRCodeValidateRequestImpl implements _QRCodeValidateRequest {
  const _$QRCodeValidateRequestImpl(
      {@JsonKey(name: 'qr_code') required this.qrCode});

  factory _$QRCodeValidateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$QRCodeValidateRequestImplFromJson(json);

  @override
  @JsonKey(name: 'qr_code')
  final String qrCode;

  @override
  String toString() {
    return 'QRCodeValidateRequest(qrCode: $qrCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QRCodeValidateRequestImpl &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, qrCode);

  /// Create a copy of QRCodeValidateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QRCodeValidateRequestImplCopyWith<_$QRCodeValidateRequestImpl>
      get copyWith => __$$QRCodeValidateRequestImplCopyWithImpl<
          _$QRCodeValidateRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QRCodeValidateRequestImplToJson(
      this,
    );
  }
}

abstract class _QRCodeValidateRequest implements QRCodeValidateRequest {
  const factory _QRCodeValidateRequest(
          {@JsonKey(name: 'qr_code') required final String qrCode}) =
      _$QRCodeValidateRequestImpl;

  factory _QRCodeValidateRequest.fromJson(Map<String, dynamic> json) =
      _$QRCodeValidateRequestImpl.fromJson;

  @override
  @JsonKey(name: 'qr_code')
  String get qrCode;

  /// Create a copy of QRCodeValidateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QRCodeValidateRequestImplCopyWith<_$QRCodeValidateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

QRCodeValidateResponse _$QRCodeValidateResponseFromJson(
    Map<String, dynamic> json) {
  return _QRCodeValidateResponse.fromJson(json);
}

/// @nodoc
mixin _$QRCodeValidateResponse {
  bool get valid => throw _privateConstructorUsedError;
  @JsonKey(name: 'attendee_id')
  String? get attendeeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'event_id')
  String? get eventId => throw _privateConstructorUsedError;
  @JsonKey(name: 'attendee_name')
  String? get attendeeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'event_name')
  String? get eventName => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'already_checked_in')
  bool? get alreadyCheckedIn => throw _privateConstructorUsedError;

  /// Serializes this QRCodeValidateResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QRCodeValidateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QRCodeValidateResponseCopyWith<QRCodeValidateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QRCodeValidateResponseCopyWith<$Res> {
  factory $QRCodeValidateResponseCopyWith(QRCodeValidateResponse value,
          $Res Function(QRCodeValidateResponse) then) =
      _$QRCodeValidateResponseCopyWithImpl<$Res, QRCodeValidateResponse>;
  @useResult
  $Res call(
      {bool valid,
      @JsonKey(name: 'attendee_id') String? attendeeId,
      @JsonKey(name: 'event_id') String? eventId,
      @JsonKey(name: 'attendee_name') String? attendeeName,
      @JsonKey(name: 'event_name') String? eventName,
      String message,
      @JsonKey(name: 'already_checked_in') bool? alreadyCheckedIn});
}

/// @nodoc
class _$QRCodeValidateResponseCopyWithImpl<$Res,
        $Val extends QRCodeValidateResponse>
    implements $QRCodeValidateResponseCopyWith<$Res> {
  _$QRCodeValidateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QRCodeValidateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valid = null,
    Object? attendeeId = freezed,
    Object? eventId = freezed,
    Object? attendeeName = freezed,
    Object? eventName = freezed,
    Object? message = null,
    Object? alreadyCheckedIn = freezed,
  }) {
    return _then(_value.copyWith(
      valid: null == valid
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool,
      attendeeId: freezed == attendeeId
          ? _value.attendeeId
          : attendeeId // ignore: cast_nullable_to_non_nullable
              as String?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      attendeeName: freezed == attendeeName
          ? _value.attendeeName
          : attendeeName // ignore: cast_nullable_to_non_nullable
              as String?,
      eventName: freezed == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      alreadyCheckedIn: freezed == alreadyCheckedIn
          ? _value.alreadyCheckedIn
          : alreadyCheckedIn // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QRCodeValidateResponseImplCopyWith<$Res>
    implements $QRCodeValidateResponseCopyWith<$Res> {
  factory _$$QRCodeValidateResponseImplCopyWith(
          _$QRCodeValidateResponseImpl value,
          $Res Function(_$QRCodeValidateResponseImpl) then) =
      __$$QRCodeValidateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool valid,
      @JsonKey(name: 'attendee_id') String? attendeeId,
      @JsonKey(name: 'event_id') String? eventId,
      @JsonKey(name: 'attendee_name') String? attendeeName,
      @JsonKey(name: 'event_name') String? eventName,
      String message,
      @JsonKey(name: 'already_checked_in') bool? alreadyCheckedIn});
}

/// @nodoc
class __$$QRCodeValidateResponseImplCopyWithImpl<$Res>
    extends _$QRCodeValidateResponseCopyWithImpl<$Res,
        _$QRCodeValidateResponseImpl>
    implements _$$QRCodeValidateResponseImplCopyWith<$Res> {
  __$$QRCodeValidateResponseImplCopyWithImpl(
      _$QRCodeValidateResponseImpl _value,
      $Res Function(_$QRCodeValidateResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of QRCodeValidateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valid = null,
    Object? attendeeId = freezed,
    Object? eventId = freezed,
    Object? attendeeName = freezed,
    Object? eventName = freezed,
    Object? message = null,
    Object? alreadyCheckedIn = freezed,
  }) {
    return _then(_$QRCodeValidateResponseImpl(
      valid: null == valid
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool,
      attendeeId: freezed == attendeeId
          ? _value.attendeeId
          : attendeeId // ignore: cast_nullable_to_non_nullable
              as String?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      attendeeName: freezed == attendeeName
          ? _value.attendeeName
          : attendeeName // ignore: cast_nullable_to_non_nullable
              as String?,
      eventName: freezed == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      alreadyCheckedIn: freezed == alreadyCheckedIn
          ? _value.alreadyCheckedIn
          : alreadyCheckedIn // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QRCodeValidateResponseImpl implements _QRCodeValidateResponse {
  const _$QRCodeValidateResponseImpl(
      {required this.valid,
      @JsonKey(name: 'attendee_id') this.attendeeId,
      @JsonKey(name: 'event_id') this.eventId,
      @JsonKey(name: 'attendee_name') this.attendeeName,
      @JsonKey(name: 'event_name') this.eventName,
      required this.message,
      @JsonKey(name: 'already_checked_in') this.alreadyCheckedIn});

  factory _$QRCodeValidateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$QRCodeValidateResponseImplFromJson(json);

  @override
  final bool valid;
  @override
  @JsonKey(name: 'attendee_id')
  final String? attendeeId;
  @override
  @JsonKey(name: 'event_id')
  final String? eventId;
  @override
  @JsonKey(name: 'attendee_name')
  final String? attendeeName;
  @override
  @JsonKey(name: 'event_name')
  final String? eventName;
  @override
  final String message;
  @override
  @JsonKey(name: 'already_checked_in')
  final bool? alreadyCheckedIn;

  @override
  String toString() {
    return 'QRCodeValidateResponse(valid: $valid, attendeeId: $attendeeId, eventId: $eventId, attendeeName: $attendeeName, eventName: $eventName, message: $message, alreadyCheckedIn: $alreadyCheckedIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QRCodeValidateResponseImpl &&
            (identical(other.valid, valid) || other.valid == valid) &&
            (identical(other.attendeeId, attendeeId) ||
                other.attendeeId == attendeeId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.attendeeName, attendeeName) ||
                other.attendeeName == attendeeName) &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.alreadyCheckedIn, alreadyCheckedIn) ||
                other.alreadyCheckedIn == alreadyCheckedIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, valid, attendeeId, eventId,
      attendeeName, eventName, message, alreadyCheckedIn);

  /// Create a copy of QRCodeValidateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QRCodeValidateResponseImplCopyWith<_$QRCodeValidateResponseImpl>
      get copyWith => __$$QRCodeValidateResponseImplCopyWithImpl<
          _$QRCodeValidateResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QRCodeValidateResponseImplToJson(
      this,
    );
  }
}

abstract class _QRCodeValidateResponse implements QRCodeValidateResponse {
  const factory _QRCodeValidateResponse(
          {required final bool valid,
          @JsonKey(name: 'attendee_id') final String? attendeeId,
          @JsonKey(name: 'event_id') final String? eventId,
          @JsonKey(name: 'attendee_name') final String? attendeeName,
          @JsonKey(name: 'event_name') final String? eventName,
          required final String message,
          @JsonKey(name: 'already_checked_in') final bool? alreadyCheckedIn}) =
      _$QRCodeValidateResponseImpl;

  factory _QRCodeValidateResponse.fromJson(Map<String, dynamic> json) =
      _$QRCodeValidateResponseImpl.fromJson;

  @override
  bool get valid;
  @override
  @JsonKey(name: 'attendee_id')
  String? get attendeeId;
  @override
  @JsonKey(name: 'event_id')
  String? get eventId;
  @override
  @JsonKey(name: 'attendee_name')
  String? get attendeeName;
  @override
  @JsonKey(name: 'event_name')
  String? get eventName;
  @override
  String get message;
  @override
  @JsonKey(name: 'already_checked_in')
  bool? get alreadyCheckedIn;

  /// Create a copy of QRCodeValidateResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QRCodeValidateResponseImplCopyWith<_$QRCodeValidateResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MessageResponse _$MessageResponseFromJson(Map<String, dynamic> json) {
  return _MessageResponse.fromJson(json);
}

/// @nodoc
mixin _$MessageResponse {
  String get message => throw _privateConstructorUsedError;

  /// Serializes this MessageResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageResponseCopyWith<MessageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageResponseCopyWith<$Res> {
  factory $MessageResponseCopyWith(
          MessageResponse value, $Res Function(MessageResponse) then) =
      _$MessageResponseCopyWithImpl<$Res, MessageResponse>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$MessageResponseCopyWithImpl<$Res, $Val extends MessageResponse>
    implements $MessageResponseCopyWith<$Res> {
  _$MessageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageResponseImplCopyWith<$Res>
    implements $MessageResponseCopyWith<$Res> {
  factory _$$MessageResponseImplCopyWith(_$MessageResponseImpl value,
          $Res Function(_$MessageResponseImpl) then) =
      __$$MessageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MessageResponseImplCopyWithImpl<$Res>
    extends _$MessageResponseCopyWithImpl<$Res, _$MessageResponseImpl>
    implements _$$MessageResponseImplCopyWith<$Res> {
  __$$MessageResponseImplCopyWithImpl(
      _$MessageResponseImpl _value, $Res Function(_$MessageResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MessageResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageResponseImpl implements _MessageResponse {
  const _$MessageResponseImpl({required this.message});

  factory _$MessageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageResponseImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'MessageResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageResponseImplCopyWith<_$MessageResponseImpl> get copyWith =>
      __$$MessageResponseImplCopyWithImpl<_$MessageResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageResponseImplToJson(
      this,
    );
  }
}

abstract class _MessageResponse implements MessageResponse {
  const factory _MessageResponse({required final String message}) =
      _$MessageResponseImpl;

  factory _MessageResponse.fromJson(Map<String, dynamic> json) =
      _$MessageResponseImpl.fromJson;

  @override
  String get message;

  /// Create a copy of MessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageResponseImplCopyWith<_$MessageResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ValidationError _$ValidationErrorFromJson(Map<String, dynamic> json) {
  return _ValidationError.fromJson(json);
}

/// @nodoc
mixin _$ValidationError {
  String get loc => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  /// Serializes this ValidationError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidationErrorCopyWith<ValidationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationErrorCopyWith<$Res> {
  factory $ValidationErrorCopyWith(
          ValidationError value, $Res Function(ValidationError) then) =
      _$ValidationErrorCopyWithImpl<$Res, ValidationError>;
  @useResult
  $Res call({String loc, String msg, String type});
}

/// @nodoc
class _$ValidationErrorCopyWithImpl<$Res, $Val extends ValidationError>
    implements $ValidationErrorCopyWith<$Res> {
  _$ValidationErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loc = null,
    Object? msg = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      loc: null == loc
          ? _value.loc
          : loc // ignore: cast_nullable_to_non_nullable
              as String,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidationErrorImplCopyWith<$Res>
    implements $ValidationErrorCopyWith<$Res> {
  factory _$$ValidationErrorImplCopyWith(_$ValidationErrorImpl value,
          $Res Function(_$ValidationErrorImpl) then) =
      __$$ValidationErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String loc, String msg, String type});
}

/// @nodoc
class __$$ValidationErrorImplCopyWithImpl<$Res>
    extends _$ValidationErrorCopyWithImpl<$Res, _$ValidationErrorImpl>
    implements _$$ValidationErrorImplCopyWith<$Res> {
  __$$ValidationErrorImplCopyWithImpl(
      _$ValidationErrorImpl _value, $Res Function(_$ValidationErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loc = null,
    Object? msg = null,
    Object? type = null,
  }) {
    return _then(_$ValidationErrorImpl(
      loc: null == loc
          ? _value.loc
          : loc // ignore: cast_nullable_to_non_nullable
              as String,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidationErrorImpl implements _ValidationError {
  const _$ValidationErrorImpl(
      {required this.loc, required this.msg, required this.type});

  factory _$ValidationErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidationErrorImplFromJson(json);

  @override
  final String loc;
  @override
  final String msg;
  @override
  final String type;

  @override
  String toString() {
    return 'ValidationError(loc: $loc, msg: $msg, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationErrorImpl &&
            (identical(other.loc, loc) || other.loc == loc) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, loc, msg, type);

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationErrorImplCopyWith<_$ValidationErrorImpl> get copyWith =>
      __$$ValidationErrorImplCopyWithImpl<_$ValidationErrorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidationErrorImplToJson(
      this,
    );
  }
}

abstract class _ValidationError implements ValidationError {
  const factory _ValidationError(
      {required final String loc,
      required final String msg,
      required final String type}) = _$ValidationErrorImpl;

  factory _ValidationError.fromJson(Map<String, dynamic> json) =
      _$ValidationErrorImpl.fromJson;

  @override
  String get loc;
  @override
  String get msg;
  @override
  String get type;

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationErrorImplCopyWith<_$ValidationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HTTPValidationError _$HTTPValidationErrorFromJson(Map<String, dynamic> json) {
  return _HTTPValidationError.fromJson(json);
}

/// @nodoc
mixin _$HTTPValidationError {
  List<ValidationError> get detail => throw _privateConstructorUsedError;

  /// Serializes this HTTPValidationError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HTTPValidationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HTTPValidationErrorCopyWith<HTTPValidationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HTTPValidationErrorCopyWith<$Res> {
  factory $HTTPValidationErrorCopyWith(
          HTTPValidationError value, $Res Function(HTTPValidationError) then) =
      _$HTTPValidationErrorCopyWithImpl<$Res, HTTPValidationError>;
  @useResult
  $Res call({List<ValidationError> detail});
}

/// @nodoc
class _$HTTPValidationErrorCopyWithImpl<$Res, $Val extends HTTPValidationError>
    implements $HTTPValidationErrorCopyWith<$Res> {
  _$HTTPValidationErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HTTPValidationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
  }) {
    return _then(_value.copyWith(
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<ValidationError>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HTTPValidationErrorImplCopyWith<$Res>
    implements $HTTPValidationErrorCopyWith<$Res> {
  factory _$$HTTPValidationErrorImplCopyWith(_$HTTPValidationErrorImpl value,
          $Res Function(_$HTTPValidationErrorImpl) then) =
      __$$HTTPValidationErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ValidationError> detail});
}

/// @nodoc
class __$$HTTPValidationErrorImplCopyWithImpl<$Res>
    extends _$HTTPValidationErrorCopyWithImpl<$Res, _$HTTPValidationErrorImpl>
    implements _$$HTTPValidationErrorImplCopyWith<$Res> {
  __$$HTTPValidationErrorImplCopyWithImpl(_$HTTPValidationErrorImpl _value,
      $Res Function(_$HTTPValidationErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HTTPValidationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
  }) {
    return _then(_$HTTPValidationErrorImpl(
      detail: null == detail
          ? _value._detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<ValidationError>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HTTPValidationErrorImpl implements _HTTPValidationError {
  const _$HTTPValidationErrorImpl({required final List<ValidationError> detail})
      : _detail = detail;

  factory _$HTTPValidationErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$HTTPValidationErrorImplFromJson(json);

  final List<ValidationError> _detail;
  @override
  List<ValidationError> get detail {
    if (_detail is EqualUnmodifiableListView) return _detail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_detail);
  }

  @override
  String toString() {
    return 'HTTPValidationError(detail: $detail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HTTPValidationErrorImpl &&
            const DeepCollectionEquality().equals(other._detail, _detail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_detail));

  /// Create a copy of HTTPValidationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HTTPValidationErrorImplCopyWith<_$HTTPValidationErrorImpl> get copyWith =>
      __$$HTTPValidationErrorImplCopyWithImpl<_$HTTPValidationErrorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HTTPValidationErrorImplToJson(
      this,
    );
  }
}

abstract class _HTTPValidationError implements HTTPValidationError {
  const factory _HTTPValidationError(
          {required final List<ValidationError> detail}) =
      _$HTTPValidationErrorImpl;

  factory _HTTPValidationError.fromJson(Map<String, dynamic> json) =
      _$HTTPValidationErrorImpl.fromJson;

  @override
  List<ValidationError> get detail;

  /// Create a copy of HTTPValidationError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HTTPValidationErrorImplCopyWith<_$HTTPValidationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
