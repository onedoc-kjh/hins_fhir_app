// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  String? get nameText => throw _privateConstructorUsedError;
  String? get firstSocialText => throw _privateConstructorUsedError;
  String? get secondSocialText => throw _privateConstructorUsedError;
  String? get reasonText => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  Map<String, dynamic>? get healthData => throw _privateConstructorUsedError;
  int get screenIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {String? nameText,
      String? firstSocialText,
      String? secondSocialText,
      String? reasonText,
      String? token,
      String? userId,
      Map<String, dynamic>? healthData,
      int screenIndex});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameText = freezed,
    Object? firstSocialText = freezed,
    Object? secondSocialText = freezed,
    Object? reasonText = freezed,
    Object? token = freezed,
    Object? userId = freezed,
    Object? healthData = freezed,
    Object? screenIndex = null,
  }) {
    return _then(_value.copyWith(
      nameText: freezed == nameText
          ? _value.nameText
          : nameText // ignore: cast_nullable_to_non_nullable
              as String?,
      firstSocialText: freezed == firstSocialText
          ? _value.firstSocialText
          : firstSocialText // ignore: cast_nullable_to_non_nullable
              as String?,
      secondSocialText: freezed == secondSocialText
          ? _value.secondSocialText
          : secondSocialText // ignore: cast_nullable_to_non_nullable
              as String?,
      reasonText: freezed == reasonText
          ? _value.reasonText
          : reasonText // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      healthData: freezed == healthData
          ? _value.healthData
          : healthData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      screenIndex: null == screenIndex
          ? _value.screenIndex
          : screenIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? nameText,
      String? firstSocialText,
      String? secondSocialText,
      String? reasonText,
      String? token,
      String? userId,
      Map<String, dynamic>? healthData,
      int screenIndex});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameText = freezed,
    Object? firstSocialText = freezed,
    Object? secondSocialText = freezed,
    Object? reasonText = freezed,
    Object? token = freezed,
    Object? userId = freezed,
    Object? healthData = freezed,
    Object? screenIndex = null,
  }) {
    return _then(_$HomeStateImpl(
      nameText: freezed == nameText
          ? _value.nameText
          : nameText // ignore: cast_nullable_to_non_nullable
              as String?,
      firstSocialText: freezed == firstSocialText
          ? _value.firstSocialText
          : firstSocialText // ignore: cast_nullable_to_non_nullable
              as String?,
      secondSocialText: freezed == secondSocialText
          ? _value.secondSocialText
          : secondSocialText // ignore: cast_nullable_to_non_nullable
              as String?,
      reasonText: freezed == reasonText
          ? _value.reasonText
          : reasonText // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      healthData: freezed == healthData
          ? _value._healthData
          : healthData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      screenIndex: null == screenIndex
          ? _value.screenIndex
          : screenIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.nameText,
      this.firstSocialText,
      this.secondSocialText,
      this.reasonText,
      this.token,
      this.userId,
      final Map<String, dynamic>? healthData,
      this.screenIndex = 0})
      : _healthData = healthData;

  @override
  final String? nameText;
  @override
  final String? firstSocialText;
  @override
  final String? secondSocialText;
  @override
  final String? reasonText;
  @override
  final String? token;
  @override
  final String? userId;
  final Map<String, dynamic>? _healthData;
  @override
  Map<String, dynamic>? get healthData {
    final value = _healthData;
    if (value == null) return null;
    if (_healthData is EqualUnmodifiableMapView) return _healthData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final int screenIndex;

  @override
  String toString() {
    return 'HomeState(nameText: $nameText, firstSocialText: $firstSocialText, secondSocialText: $secondSocialText, reasonText: $reasonText, token: $token, userId: $userId, healthData: $healthData, screenIndex: $screenIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.nameText, nameText) ||
                other.nameText == nameText) &&
            (identical(other.firstSocialText, firstSocialText) ||
                other.firstSocialText == firstSocialText) &&
            (identical(other.secondSocialText, secondSocialText) ||
                other.secondSocialText == secondSocialText) &&
            (identical(other.reasonText, reasonText) ||
                other.reasonText == reasonText) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._healthData, _healthData) &&
            (identical(other.screenIndex, screenIndex) ||
                other.screenIndex == screenIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      nameText,
      firstSocialText,
      secondSocialText,
      reasonText,
      token,
      userId,
      const DeepCollectionEquality().hash(_healthData),
      screenIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final String? nameText,
      final String? firstSocialText,
      final String? secondSocialText,
      final String? reasonText,
      final String? token,
      final String? userId,
      final Map<String, dynamic>? healthData,
      final int screenIndex}) = _$HomeStateImpl;

  @override
  String? get nameText;
  @override
  String? get firstSocialText;
  @override
  String? get secondSocialText;
  @override
  String? get reasonText;
  @override
  String? get token;
  @override
  String? get userId;
  @override
  Map<String, dynamic>? get healthData;
  @override
  int get screenIndex;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
