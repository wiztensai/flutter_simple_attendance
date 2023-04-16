// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LatLng latLng) currentLoc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LatLng latLng)? currentLoc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LatLng latLng)? currentLoc,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CurrentLoc value) currentLoc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CurrentLoc value)? currentLoc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentLoc value)? currentLoc,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckInStateCopyWith<$Res> {
  factory $CheckInStateCopyWith(
          CheckInState value, $Res Function(CheckInState) then) =
      _$CheckInStateCopyWithImpl<$Res, CheckInState>;
}

/// @nodoc
class _$CheckInStateCopyWithImpl<$Res, $Val extends CheckInState>
    implements $CheckInStateCopyWith<$Res> {
  _$CheckInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CheckInStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CheckInState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LatLng latLng) currentLoc,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LatLng latLng)? currentLoc,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LatLng latLng)? currentLoc,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CurrentLoc value) currentLoc,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CurrentLoc value)? currentLoc,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentLoc value)? currentLoc,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CheckInState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_CurrentLocCopyWith<$Res> {
  factory _$$_CurrentLocCopyWith(
          _$_CurrentLoc value, $Res Function(_$_CurrentLoc) then) =
      __$$_CurrentLocCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng latLng});
}

/// @nodoc
class __$$_CurrentLocCopyWithImpl<$Res>
    extends _$CheckInStateCopyWithImpl<$Res, _$_CurrentLoc>
    implements _$$_CurrentLocCopyWith<$Res> {
  __$$_CurrentLocCopyWithImpl(
      _$_CurrentLoc _value, $Res Function(_$_CurrentLoc) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latLng = null,
  }) {
    return _then(_$_CurrentLoc(
      null == latLng
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_CurrentLoc implements _CurrentLoc {
  const _$_CurrentLoc(this.latLng);

  @override
  final LatLng latLng;

  @override
  String toString() {
    return 'CheckInState.currentLoc(latLng: $latLng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentLoc &&
            (identical(other.latLng, latLng) || other.latLng == latLng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latLng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentLocCopyWith<_$_CurrentLoc> get copyWith =>
      __$$_CurrentLocCopyWithImpl<_$_CurrentLoc>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LatLng latLng) currentLoc,
  }) {
    return currentLoc(latLng);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LatLng latLng)? currentLoc,
  }) {
    return currentLoc?.call(latLng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LatLng latLng)? currentLoc,
    required TResult orElse(),
  }) {
    if (currentLoc != null) {
      return currentLoc(latLng);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CurrentLoc value) currentLoc,
  }) {
    return currentLoc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CurrentLoc value)? currentLoc,
  }) {
    return currentLoc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentLoc value)? currentLoc,
    required TResult orElse(),
  }) {
    if (currentLoc != null) {
      return currentLoc(this);
    }
    return orElse();
  }
}

abstract class _CurrentLoc implements CheckInState {
  const factory _CurrentLoc(final LatLng latLng) = _$_CurrentLoc;

  LatLng get latLng;
  @JsonKey(ignore: true)
  _$$_CurrentLocCopyWith<_$_CurrentLoc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckInHistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<AbsensiModel> datas) datas,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<AbsensiModel> datas)? datas,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<AbsensiModel> datas)? datas,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial2 value) initial,
    required TResult Function(_Datas value) datas,
    required TResult Function(_Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial2 value)? initial,
    TResult? Function(_Datas value)? datas,
    TResult? Function(_Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial2 value)? initial,
    TResult Function(_Datas value)? datas,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckInHistoryStateCopyWith<$Res> {
  factory $CheckInHistoryStateCopyWith(
          CheckInHistoryState value, $Res Function(CheckInHistoryState) then) =
      _$CheckInHistoryStateCopyWithImpl<$Res, CheckInHistoryState>;
}

/// @nodoc
class _$CheckInHistoryStateCopyWithImpl<$Res, $Val extends CheckInHistoryState>
    implements $CheckInHistoryStateCopyWith<$Res> {
  _$CheckInHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_Initial2CopyWith<$Res> {
  factory _$$_Initial2CopyWith(
          _$_Initial2 value, $Res Function(_$_Initial2) then) =
      __$$_Initial2CopyWithImpl<$Res>;
}

/// @nodoc
class __$$_Initial2CopyWithImpl<$Res>
    extends _$CheckInHistoryStateCopyWithImpl<$Res, _$_Initial2>
    implements _$$_Initial2CopyWith<$Res> {
  __$$_Initial2CopyWithImpl(
      _$_Initial2 _value, $Res Function(_$_Initial2) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial2 implements _Initial2 {
  const _$_Initial2();

  @override
  String toString() {
    return 'CheckInHistoryState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial2);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<AbsensiModel> datas) datas,
    required TResult Function() empty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<AbsensiModel> datas)? datas,
    TResult? Function()? empty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<AbsensiModel> datas)? datas,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial2 value) initial,
    required TResult Function(_Datas value) datas,
    required TResult Function(_Empty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial2 value)? initial,
    TResult? Function(_Datas value)? datas,
    TResult? Function(_Empty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial2 value)? initial,
    TResult Function(_Datas value)? datas,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial2 implements CheckInHistoryState {
  const factory _Initial2() = _$_Initial2;
}

/// @nodoc
abstract class _$$_DatasCopyWith<$Res> {
  factory _$$_DatasCopyWith(_$_Datas value, $Res Function(_$_Datas) then) =
      __$$_DatasCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AbsensiModel> datas});
}

/// @nodoc
class __$$_DatasCopyWithImpl<$Res>
    extends _$CheckInHistoryStateCopyWithImpl<$Res, _$_Datas>
    implements _$$_DatasCopyWith<$Res> {
  __$$_DatasCopyWithImpl(_$_Datas _value, $Res Function(_$_Datas) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datas = null,
  }) {
    return _then(_$_Datas(
      null == datas
          ? _value._datas
          : datas // ignore: cast_nullable_to_non_nullable
              as List<AbsensiModel>,
    ));
  }
}

/// @nodoc

class _$_Datas implements _Datas {
  const _$_Datas(final List<AbsensiModel> datas) : _datas = datas;

  final List<AbsensiModel> _datas;
  @override
  List<AbsensiModel> get datas {
    if (_datas is EqualUnmodifiableListView) return _datas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_datas);
  }

  @override
  String toString() {
    return 'CheckInHistoryState.datas(datas: $datas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Datas &&
            const DeepCollectionEquality().equals(other._datas, _datas));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_datas));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DatasCopyWith<_$_Datas> get copyWith =>
      __$$_DatasCopyWithImpl<_$_Datas>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<AbsensiModel> datas) datas,
    required TResult Function() empty,
  }) {
    return datas(this.datas);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<AbsensiModel> datas)? datas,
    TResult? Function()? empty,
  }) {
    return datas?.call(this.datas);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<AbsensiModel> datas)? datas,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (datas != null) {
      return datas(this.datas);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial2 value) initial,
    required TResult Function(_Datas value) datas,
    required TResult Function(_Empty value) empty,
  }) {
    return datas(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial2 value)? initial,
    TResult? Function(_Datas value)? datas,
    TResult? Function(_Empty value)? empty,
  }) {
    return datas?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial2 value)? initial,
    TResult Function(_Datas value)? datas,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (datas != null) {
      return datas(this);
    }
    return orElse();
  }
}

abstract class _Datas implements CheckInHistoryState {
  const factory _Datas(final List<AbsensiModel> datas) = _$_Datas;

  List<AbsensiModel> get datas;
  @JsonKey(ignore: true)
  _$$_DatasCopyWith<_$_Datas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmptyCopyWith<$Res> {
  factory _$$_EmptyCopyWith(_$_Empty value, $Res Function(_$_Empty) then) =
      __$$_EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptyCopyWithImpl<$Res>
    extends _$CheckInHistoryStateCopyWithImpl<$Res, _$_Empty>
    implements _$$_EmptyCopyWith<$Res> {
  __$$_EmptyCopyWithImpl(_$_Empty _value, $Res Function(_$_Empty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'CheckInHistoryState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<AbsensiModel> datas) datas,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<AbsensiModel> datas)? datas,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<AbsensiModel> datas)? datas,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial2 value) initial,
    required TResult Function(_Datas value) datas,
    required TResult Function(_Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial2 value)? initial,
    TResult? Function(_Datas value)? datas,
    TResult? Function(_Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial2 value)? initial,
    TResult Function(_Datas value)? datas,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements CheckInHistoryState {
  const factory _Empty() = _$_Empty;
}
