// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HealthState {
  Map<String?, dynamic>? get healthData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HealthStateCopyWith<HealthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthStateCopyWith<$Res> {
  factory $HealthStateCopyWith(
          HealthState value, $Res Function(HealthState) then) =
      _$HealthStateCopyWithImpl<$Res, HealthState>;
  @useResult
  $Res call({Map<String?, dynamic>? healthData});
}

/// @nodoc
class _$HealthStateCopyWithImpl<$Res, $Val extends HealthState>
    implements $HealthStateCopyWith<$Res> {
  _$HealthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? healthData = freezed,
  }) {
    return _then(_value.copyWith(
      healthData: freezed == healthData
          ? _value.healthData
          : healthData // ignore: cast_nullable_to_non_nullable
              as Map<String?, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HealthStateImplCopyWith<$Res>
    implements $HealthStateCopyWith<$Res> {
  factory _$$HealthStateImplCopyWith(
          _$HealthStateImpl value, $Res Function(_$HealthStateImpl) then) =
      __$$HealthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String?, dynamic>? healthData});
}

/// @nodoc
class __$$HealthStateImplCopyWithImpl<$Res>
    extends _$HealthStateCopyWithImpl<$Res, _$HealthStateImpl>
    implements _$$HealthStateImplCopyWith<$Res> {
  __$$HealthStateImplCopyWithImpl(
      _$HealthStateImpl _value, $Res Function(_$HealthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? healthData = freezed,
  }) {
    return _then(_$HealthStateImpl(
      healthData: freezed == healthData
          ? _value._healthData
          : healthData // ignore: cast_nullable_to_non_nullable
              as Map<String?, dynamic>?,
    ));
  }
}

/// @nodoc

class _$HealthStateImpl implements _HealthState {
  const _$HealthStateImpl({final Map<String?, dynamic>? healthData})
      : _healthData = healthData;

  final Map<String?, dynamic>? _healthData;
  @override
  Map<String?, dynamic>? get healthData {
    final value = _healthData;
    if (value == null) return null;
    if (_healthData is EqualUnmodifiableMapView) return _healthData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'HealthState(healthData: $healthData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthStateImpl &&
            const DeepCollectionEquality()
                .equals(other._healthData, _healthData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_healthData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthStateImplCopyWith<_$HealthStateImpl> get copyWith =>
      __$$HealthStateImplCopyWithImpl<_$HealthStateImpl>(this, _$identity);
}

abstract class _HealthState implements HealthState {
  const factory _HealthState({final Map<String?, dynamic>? healthData}) =
      _$HealthStateImpl;

  @override
  Map<String?, dynamic>? get healthData;
  @override
  @JsonKey(ignore: true)
  _$$HealthStateImplCopyWith<_$HealthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
