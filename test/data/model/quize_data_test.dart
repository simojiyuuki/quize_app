import 'package:flutter_test/flutter_test.dart';
import 'package:quize_app/data/model/quize_data.dart';

void main() {
  test("QuizeData answerQuestion() test", () {
    var actualData = const QuizeData(questionIndex: 0, totalScore: 0);
    QuizeData matcherData;

    actualData = actualData.answerQuestion(1);
    matcherData = const QuizeData(questionIndex: 1, totalScore: 1);
    expect(actualData, matcherData);

    actualData = actualData.answerQuestion(2);
    matcherData = const QuizeData(questionIndex: 2, totalScore: 3);
    expect(actualData, matcherData);

    actualData = actualData.answerQuestion(3);
    matcherData = const QuizeData(questionIndex: 3, totalScore: 6);
    expect(actualData, matcherData);
  });

  test("QuizeData resetQuestion() test", () {
    QuizeData actualData;
    var matcherData = const QuizeData(questionIndex: 0, totalScore: 0);

    actualData = const QuizeData(questionIndex: 1, totalScore: 1);
    actualData = actualData.resetQuize();

    expect(actualData, matcherData);

    actualData = const QuizeData(questionIndex: 1, totalScore: 0);
    actualData = actualData.resetQuize();
    expect(actualData, matcherData);

    actualData = const QuizeData(questionIndex: 0, totalScore: 1);
    actualData = actualData.resetQuize();
    expect(actualData, matcherData);

    actualData = const QuizeData(questionIndex: 10, totalScore: 10);
    actualData = actualData.resetQuize();
    expect(actualData, matcherData);
  });
}
