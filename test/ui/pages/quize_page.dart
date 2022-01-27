import 'package:flutter_test/flutter_test.dart';
import 'package:quize_app/ui/pages/quize_page.dart';

void main() {
  testWidgets("QuizePage widget test", (WidgetTester tester) async {
    await tester.pumpWidget(const QuizePage());

    expect(find.text("Quize App"), findsOneWidget);
  });
}
