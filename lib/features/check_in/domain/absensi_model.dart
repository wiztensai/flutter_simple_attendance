import 'package:freezed_annotation/freezed_annotation.dart';

part 'absensi_model.freezed.dart';
part 'absensi_model.g.dart';

@freezed
class AbsensiModel with _$AbsensiModel {
  const factory AbsensiModel({
    required String username,
    required String latitude,
    required String longitude,
    required int time_checkin,
    required int time_checkout,
    required String photo,
    required String check_type,
  }) = _AbsensiModel;

  factory AbsensiModel.fromJson(Map<String, dynamic> json) =>
      _$AbsensiModelFromJson(json);

  static const TYPE_CHECKIN = 'Check In';
  static const TYPE_CHECKOUT = 'Check Out';
}
