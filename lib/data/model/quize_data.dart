import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quize_data.freezed.dart';
part 'quize_data.g.dart';

@freezed
class QuizeData with _$QuizeData {
  const factory QuizeData({
    List<Map<String, dynamic>>? questions,
    @Default(0) int questionIndex,
    @Default(0) int totalScore,
  }) = _QuizeData;

  factory QuizeData.fromJson(Map<String, dynamic> json) =>
      _$QuizeDataFromJson(json);
}

extension QuizeModel on QuizeData {
  get questionLength => questions != null ? questions!.length : 0;

  QuizeData answerQuestion(int score) {
    var _questionIndex = questionIndex + 1;
    var _totalScore = totalScore + score;
    if (kDebugMode) {
      if (questionIndex < questionLength) {
        print("さらに質問があります");
      } else {
        print("質問はもうありません");
      }
    }
    return QuizeData(questionIndex: _questionIndex, totalScore: _totalScore);
  }

  QuizeData resetQuize() {
    return const QuizeData(questionIndex: 0, totalScore: 0);
  }
}
