import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quize_app/data/model/quize/quize_data.dart';
import 'package:quize_app/data/repository/quize_repository.dart';

final quizeViewModelProvider =
    StateNotifierProvider.autoDispose<QuizeViewModel, AsyncValue<QuizeData>>(
        (ref) => QuizeViewModel(ref.read));

class QuizeViewModel extends StateNotifier<AsyncValue<QuizeData>> {
  final Reader _reader;

  late final QuizeRepository _quizeRepository =
      _reader(quizeRepositoryProvider);

  QuizeViewModel(
    this._reader,
  ) : super(const AsyncLoading()) {
    getQuize();
  }

  void onReset() {
    state = state.whenData((value) => value.resetQuize());
  }

  void onAnswer(int score) {
    state = state.whenData((value) => value.answerQuestion(score));
  }

  Future<void> getQuize() async {
    var result = await _quizeRepository.fetchQuestions();

    result.when(
      success: (data) {
        state = AsyncValue.data(
          QuizeData(
            questions: data,
          ),
        );
      },
      failure: (error) {
        state = AsyncValue.error(error);
      },
    );
  }
}
