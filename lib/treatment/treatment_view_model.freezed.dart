// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'treatment_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TreatmentState {
  dynamic get treatmentData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TreatmentStateCopyWith<TreatmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreatmentStateCopyWith<$Res> {
  factory $TreatmentStateCopyWith(
          TreatmentState value, $Res Function(TreatmentState) then) =
      _$TreatmentStateCopyWithImpl<$Res, TreatmentState>;
  @useResult
  $Res call({dynamic treatmentData});
}

/// @nodoc
class _$TreatmentStateCopyWithImpl<$Res, $Val extends TreatmentState>
    implements $TreatmentStateCopyWith<$Res> {
  _$TreatmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treatmentData = freezed,
  }) {
    return _then(_value.copyWith(
      treatmentData: freezed == treatmentData
          ? _value.treatmentData
          : treatmentData // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TreatmentStateImplCopyWith<$Res>
    implements $TreatmentStateCopyWith<$Res> {
  factory _$$TreatmentStateImplCopyWith(_$TreatmentStateImpl value,
          $Res Function(_$TreatmentStateImpl) then) =
      __$$TreatmentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic treatmentData});
}

/// @nodoc
class __$$TreatmentStateImplCopyWithImpl<$Res>
    extends _$TreatmentStateCopyWithImpl<$Res, _$TreatmentStateImpl>
    implements _$$TreatmentStateImplCopyWith<$Res> {
  __$$TreatmentStateImplCopyWithImpl(
      _$TreatmentStateImpl _value, $Res Function(_$TreatmentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treatmentData = freezed,
  }) {
    return _then(_$TreatmentStateImpl(
      treatmentData: freezed == treatmentData
          ? _value.treatmentData
          : treatmentData // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$TreatmentStateImpl implements _TreatmentState {
  const _$TreatmentStateImpl({this.treatmentData});

  @override
  final dynamic treatmentData;

  @override
  String toString() {
    return 'TreatmentState(treatmentData: $treatmentData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreatmentStateImpl &&
            const DeepCollectionEquality()
                .equals(other.treatmentData, treatmentData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(treatmentData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreatmentStateImplCopyWith<_$TreatmentStateImpl> get copyWith =>
      __$$TreatmentStateImplCopyWithImpl<_$TreatmentStateImpl>(
          this, _$identity);
}

abstract class _TreatmentState implements TreatmentState {
  const factory _TreatmentState({final dynamic treatmentData}) =
      _$TreatmentStateImpl;

  @override
  dynamic get treatmentData;
  @override
  @JsonKey(ignore: true)
  _$$TreatmentStateImplCopyWith<_$TreatmentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
