// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'absensi_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AbsensiModel _$$_AbsensiModelFromJson(Map<String, dynamic> json) =>
    _$_AbsensiModel(
      username: json['username'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      time_checkin: json['time_checkin'] as int,
      time_checkout: json['time_checkout'] as int,
      photo: json['photo'] as String,
      check_type: json['check_type'] as String,
    );

Map<String, dynamic> _$$_AbsensiModelToJson(_$_AbsensiModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'time_checkin': instance.time_checkin,
      'time_checkout': instance.time_checkout,
      'photo': instance.photo,
      'check_type': instance.check_type,
    };
