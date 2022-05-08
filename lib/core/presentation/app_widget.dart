import 'package:flutter/material.dart';
import '../../guess/presentation/pages/guess_word_page.dart';

class WordleApp extends StatelessWidget {
  const WordleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GuessWordPage(),
    );
  }
}
