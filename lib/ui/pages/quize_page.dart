import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quize_app/ui/components/quize.dart';
import 'package:quize_app/ui/components/result.dart';
import 'package:quize_app/ui/pages/quize_view_model.dart';

class QuizePage extends StatefulHookConsumerWidget {
  const QuizePage({Key? key}) : super(key: key);

  @override
  ConsumerState<QuizePage> createState() => _QuizePageState();
}

class _QuizePageState extends ConsumerState<QuizePage> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final quizeViewModel = ref.read(quizeViewModelProvider.notifier);
    final state = ref.watch(quizeViewModelProvider);

    return state.when(
      data: (quizeData) => Scaffold(
        appBar: AppBar(
          title: const Text('Quize App'),
        ),
        body: quizeData.questionIndex < _questions.length
            ? Quize(
                questions: _questions,
                questionIndex: quizeData.questionIndex,
                answerQuestion: quizeViewModel.onAnswer,
              )
            : Result(
                resultScore: quizeData.totalScore,
                resetHandler: quizeViewModel.onReset,
              ),
      ),
      error: (e, msg) => Scaffold(
        body: SafeArea(
          child: Center(
            child: Text(
              e.toString(),
            ),
          ),
        ),
      ),
      loading: () => const Scaffold(
        body: SafeArea(
          child: Center(
            child: CircularProgressIndicator(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
