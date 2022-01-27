import 'package:flutter/material.dart';
import 'package:quize_app/ui/components/answer.dart';
import 'package:quize_app/ui/components/question.dart';

class Quize extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quize(
      {Key? key,
      required this.questions,
      required this.questionIndex,
      required this.answerQuestion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // question
        Question(
          questionText: questions[questionIndex]["questionText"].toString(),
        ),
        // answer list
        ...(questions[questionIndex]['answers'] as List<Map<String, dynamic>>)
            .map((answer) {
          return Answer(
              selectHandler: () => answerQuestion(answer['score']),
              answerText: answer['text']);
        }).toList()
      ],
    );
  }
}
