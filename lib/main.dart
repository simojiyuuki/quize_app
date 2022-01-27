import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quize_app/quize_app.dart';

void main() {
  runApp(const ProviderScope(child: QuizeApp()));
}
