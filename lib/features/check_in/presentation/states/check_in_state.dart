import 'package:absensi_nanang/features/check_in/domain/absensi_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'check_in_state.freezed.dart';

@freezed
class CheckInState with _$CheckInState {
  const factory CheckInState.initial() = _Initial;
  const factory CheckInState.currentLoc(LatLng latLng) = _CurrentLoc;
}

@freezed
class CheckInHistoryState with _$CheckInHistoryState {
  const factory CheckInHistoryState.initial() = _Initial2;
  const factory CheckInHistoryState.datas(List<AbsensiModel> datas) = _Datas;
  const factory CheckInHistoryState.empty() = _Empty;
}
