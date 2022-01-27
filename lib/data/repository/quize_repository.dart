import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quize_app/data/model/result.dart';

final quizeRepositoryProvider = Provider((ref) => QuizeRepository(ref.read));

class QuizeRepository {
  // ignore: unused_field
  final Reader _reader;

  QuizeRepository(this._reader);

  Future<Result<List<Map<String, dynamic>>>> fetchQuestions() async {
    return Result.guardFuture(() async {
      // await Future.delayed(const Duration(seconds: 1)); // 1秒待機
      // ダミーデータ
      const questions = [
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
      return questions;
    });
  }
}
