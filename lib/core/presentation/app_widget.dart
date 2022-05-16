import 'package:flutter/material.dart';
import '../../guess/presentation/pages/guess_word_page.dart';

class WordleApp extends StatelessWidget {
  const WordleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          centerTitle: true,
          toolbarHeight: 50,
          elevation: 0.0,
          foregroundColor: Colors.black,
        ),
      ),
      home: GuessWordPage(),
    );
  }
}
