import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:multi_language/core/di/dependecy_injection.dart';
import 'package:multi_language/features/home/presentation/pages/home_page.dart';

import 'features/language_selection/presentation/blocs/language_bloc.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider<LanguageBloc>(
          create: (context) => GetIt.I<LanguageBloc>()..add(const LanguageEvent.setLanguage(lang: "English")),

          child: const HomePage()),
    );
  }
}


