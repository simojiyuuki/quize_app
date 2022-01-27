// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quize_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuizeData _$QuizeDataFromJson(Map<String, dynamic> json) {
  return _QuizeData.fromJson(json);
}

/// @nodoc
class _$QuizeDataTearOff {
  const _$QuizeDataTearOff();

  _QuizeData call(
      {List<Map<String, dynamic>>? questions,
      int questionIndex = 0,
      int totalScore = 0}) {
    return _QuizeData(
      questions: questions,
      questionIndex: questionIndex,
      totalScore: totalScore,
    );
  }

  QuizeData fromJson(Map<String, Object?> json) {
    return QuizeData.fromJson(json);
  }
}

/// @nodoc
const $QuizeData = _$QuizeDataTearOff();

/// @nodoc
mixin _$QuizeData {
  List<Map<String, dynamic>>? get questions =>
      throw _privateConstructorUsedError;
  int get questionIndex => throw _privateConstructorUsedError;
  int get totalScore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizeDataCopyWith<QuizeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizeDataCopyWith<$Res> {
  factory $QuizeDataCopyWith(QuizeData value, $Res Function(QuizeData) then) =
      _$QuizeDataCopyWithImpl<$Res>;
  $Res call(
      {List<Map<String, dynamic>>? questions,
      int questionIndex,
      int totalScore});
}

/// @nodoc
class _$QuizeDataCopyWithImpl<$Res> implements $QuizeDataCopyWith<$Res> {
  _$QuizeDataCopyWithImpl(this._value, this._then);

  final QuizeData _value;
  // ignore: unused_field
  final $Res Function(QuizeData) _then;

  @override
  $Res call({
    Object? questions = freezed,
    Object? questionIndex = freezed,
    Object? totalScore = freezed,
  }) {
    return _then(_value.copyWith(
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      questionIndex: questionIndex == freezed
          ? _value.questionIndex
          : questionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      totalScore: totalScore == freezed
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$QuizeDataCopyWith<$Res> implements $QuizeDataCopyWith<$Res> {
  factory _$QuizeDataCopyWith(
          _QuizeData value, $Res Function(_QuizeData) then) =
      __$QuizeDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Map<String, dynamic>>? questions,
      int questionIndex,
      int totalScore});
}

/// @nodoc
class __$QuizeDataCopyWithImpl<$Res> extends _$QuizeDataCopyWithImpl<$Res>
    implements _$QuizeDataCopyWith<$Res> {
  __$QuizeDataCopyWithImpl(_QuizeData _value, $Res Function(_QuizeData) _then)
      : super(_value, (v) => _then(v as _QuizeData));

  @override
  _QuizeData get _value => super._value as _QuizeData;

  @override
  $Res call({
    Object? questions = freezed,
    Object? questionIndex = freezed,
    Object? totalScore = freezed,
  }) {
    return _then(_QuizeData(
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      questionIndex: questionIndex == freezed
          ? _value.questionIndex
          : questionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      totalScore: totalScore == freezed
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuizeData with DiagnosticableTreeMixin implements _QuizeData {
  const _$_QuizeData(
      {this.questions, this.questionIndex = 0, this.totalScore = 0});

  factory _$_QuizeData.fromJson(Map<String, dynamic> json) =>
      _$$_QuizeDataFromJson(json);

  @override
  final List<Map<String, dynamic>>? questions;
  @JsonKey()
  @override
  final int questionIndex;
  @JsonKey()
  @override
  final int totalScore;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizeData(questions: $questions, questionIndex: $questionIndex, totalScore: $totalScore)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuizeData'))
      ..add(DiagnosticsProperty('questions', questions))
      ..add(DiagnosticsProperty('questionIndex', questionIndex))
      ..add(DiagnosticsProperty('totalScore', totalScore));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuizeData &&
            const DeepCollectionEquality().equals(other.questions, questions) &&
            const DeepCollectionEquality()
                .equals(other.questionIndex, questionIndex) &&
            const DeepCollectionEquality()
                .equals(other.totalScore, totalScore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(questions),
      const DeepCollectionEquality().hash(questionIndex),
      const DeepCollectionEquality().hash(totalScore));

  @JsonKey(ignore: true)
  @override
  _$QuizeDataCopyWith<_QuizeData> get copyWith =>
      __$QuizeDataCopyWithImpl<_QuizeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuizeDataToJson(this);
  }
}

abstract class _QuizeData implements QuizeData {
  const factory _QuizeData(
      {List<Map<String, dynamic>>? questions,
      int questionIndex,
      int totalScore}) = _$_QuizeData;

  factory _QuizeData.fromJson(Map<String, dynamic> json) =
      _$_QuizeData.fromJson;

  @override
  List<Map<String, dynamic>>? get questions;
  @override
  int get questionIndex;
  @override
  int get totalScore;
  @override
  @JsonKey(ignore: true)
  _$QuizeDataCopyWith<_QuizeData> get copyWith =>
      throw _privateConstructorUsedError;
}
