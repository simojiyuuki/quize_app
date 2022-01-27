// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quize_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuizeData _$$_QuizeDataFromJson(Map<String, dynamic> json) => _$_QuizeData(
      questions: (json['questions'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      questionIndex: json['questionIndex'] as int? ?? 0,
      totalScore: json['totalScore'] as int? ?? 0,
    );

Map<String, dynamic> _$$_QuizeDataToJson(_$_QuizeData instance) =>
    <String, dynamic>{
      'questions': instance.questions,
      'questionIndex': instance.questionIndex,
      'totalScore': instance.totalScore,
    };
