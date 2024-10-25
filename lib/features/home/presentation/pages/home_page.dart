import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_language/core/language/lang.i69n.dart';
import 'package:multi_language/features/language_selection/presentation/blocs/language_bloc.dart';
import 'package:multi_language/features/language_selection/presentation/pages/language_selection_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<LanguageBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0,),
            child: IconButton(
              icon: const Icon(
                Icons.language,
                size: 30,
              ),
              color: Colors.white,
              onPressed: () =>
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          BlocProvider<LanguageBloc>.value(
                            value: bloc,
                            child: const LanguageSelectionPage(),
                          ))),
            ),
          )
        ],
      ),
      body: Center(
        child: BlocSelector<LanguageBloc, LanguageState, Lang>(
          selector: (state) {
            return state.maybeWhen(
                updatedLanguage: (data) => data,
                orElse: () => const Lang());
          }, builder: (context, data) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Tech : ${data.general.tech}",
                style: const TextStyle(fontSize: 30),
              ),
              Text(
                "Company : ${data.general.company}",
                style: const TextStyle(fontSize: 30),
              ),
              Text(
                "Country : ${data.general.country}",
                style: const TextStyle(fontSize: 30),
              ),
            ],
          );
        },
        ),
      ),
    );
  }
}
