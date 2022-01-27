import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function()? selectHandler;
  final String answerText;

  const Answer({
    Key? key,
    required this.selectHandler,
    required this.answerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(
          answerText,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(
            fontSize: 20,
            color: Colors.blue,
          ),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
