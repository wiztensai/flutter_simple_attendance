// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'absensi_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AbsensiModel _$AbsensiModelFromJson(Map<String, dynamic> json) {
  return _AbsensiModel.fromJson(json);
}

/// @nodoc
mixin _$AbsensiModel {
  String get username => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;
  int get time_checkin => throw _privateConstructorUsedError;
  int get time_checkout => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  String get check_type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbsensiModelCopyWith<AbsensiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbsensiModelCopyWith<$Res> {
  factory $AbsensiModelCopyWith(
          AbsensiModel value, $Res Function(AbsensiModel) then) =
      _$AbsensiModelCopyWithImpl<$Res, AbsensiModel>;
  @useResult
  $Res call(
      {String username,
      String latitude,
      String longitude,
      int time_checkin,
      int time_checkout,
      String photo,
      String check_type});
}

/// @nodoc
class _$AbsensiModelCopyWithImpl<$Res, $Val extends AbsensiModel>
    implements $AbsensiModelCopyWith<$Res> {
  _$AbsensiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? time_checkin = null,
    Object? time_checkout = null,
    Object? photo = null,
    Object? check_type = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      time_checkin: null == time_checkin
          ? _value.time_checkin
          : time_checkin // ignore: cast_nullable_to_non_nullable
              as int,
      time_checkout: null == time_checkout
          ? _value.time_checkout
          : time_checkout // ignore: cast_nullable_to_non_nullable
              as int,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      check_type: null == check_type
          ? _value.check_type
          : check_type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AbsensiModelCopyWith<$Res>
    implements $AbsensiModelCopyWith<$Res> {
  factory _$$_AbsensiModelCopyWith(
          _$_AbsensiModel value, $Res Function(_$_AbsensiModel) then) =
      __$$_AbsensiModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String latitude,
      String longitude,
      int time_checkin,
      int time_checkout,
      String photo,
      String check_type});
}

/// @nodoc
class __$$_AbsensiModelCopyWithImpl<$Res>
    extends _$AbsensiModelCopyWithImpl<$Res, _$_AbsensiModel>
    implements _$$_AbsensiModelCopyWith<$Res> {
  __$$_AbsensiModelCopyWithImpl(
      _$_AbsensiModel _value, $Res Function(_$_AbsensiModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? time_checkin = null,
    Object? time_checkout = null,
    Object? photo = null,
    Object? check_type = null,
  }) {
    return _then(_$_AbsensiModel(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      time_checkin: null == time_checkin
          ? _value.time_checkin
          : time_checkin // ignore: cast_nullable_to_non_nullable
              as int,
      time_checkout: null == time_checkout
          ? _value.time_checkout
          : time_checkout // ignore: cast_nullable_to_non_nullable
              as int,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      check_type: null == check_type
          ? _value.check_type
          : check_type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AbsensiModel implements _AbsensiModel {
  const _$_AbsensiModel(
      {required this.username,
      required this.latitude,
      required this.longitude,
      required this.time_checkin,
      required this.time_checkout,
      required this.photo,
      required this.check_type});

  factory _$_AbsensiModel.fromJson(Map<String, dynamic> json) =>
      _$$_AbsensiModelFromJson(json);

  @override
  final String username;
  @override
  final String latitude;
  @override
  final String longitude;
  @override
  final int time_checkin;
  @override
  final int time_checkout;
  @override
  final String photo;
  @override
  final String check_type;

  @override
  String toString() {
    return 'AbsensiModel(username: $username, latitude: $latitude, longitude: $longitude, time_checkin: $time_checkin, time_checkout: $time_checkout, photo: $photo, check_type: $check_type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AbsensiModel &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.time_checkin, time_checkin) ||
                other.time_checkin == time_checkin) &&
            (identical(other.time_checkout, time_checkout) ||
                other.time_checkout == time_checkout) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.check_type, check_type) ||
                other.check_type == check_type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, latitude, longitude,
      time_checkin, time_checkout, photo, check_type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AbsensiModelCopyWith<_$_AbsensiModel> get copyWith =>
      __$$_AbsensiModelCopyWithImpl<_$_AbsensiModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AbsensiModelToJson(
      this,
    );
  }
}

abstract class _AbsensiModel implements AbsensiModel {
  const factory _AbsensiModel(
      {required final String username,
      required final String latitude,
      required final String longitude,
      required final int time_checkin,
      required final int time_checkout,
      required final String photo,
      required final String check_type}) = _$_AbsensiModel;

  factory _AbsensiModel.fromJson(Map<String, dynamic> json) =
      _$_AbsensiModel.fromJson;

  @override
  String get username;
  @override
  String get latitude;
  @override
  String get longitude;
  @override
  int get time_checkin;
  @override
  int get time_checkout;
  @override
  String get photo;
  @override
  String get check_type;
  @override
  @JsonKey(ignore: true)
  _$$_AbsensiModelCopyWith<_$_AbsensiModel> get copyWith =>
      throw _privateConstructorUsedError;
}
