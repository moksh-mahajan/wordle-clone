import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../guess/presentation/pages/guess_word_page.dart';

class WordleApp extends StatelessWidget {
  WordleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
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
    );
  }

  final _router = GoRouter(urlPathStrategy: UrlPathStrategy.path, routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: const GuessWordPage(),
      ),
    )
  ]);
}
