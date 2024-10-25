import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:multi_language/core/language/lang.i69n.dart';
import 'package:multi_language/core/language/lang_in.i69n.dart';
import 'package:multi_language/features/home/presentation/pages/home_page.dart';
import 'package:multi_language/features/language_selection/presentation/blocs/language_bloc.dart';

class LanguageSelectionPage extends StatelessWidget {
  const LanguageSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Language Selection",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            BlocSelector<LanguageBloc, LanguageState, Lang>(
              selector: (state) {
                return state.maybeWhen(
                    updatedLanguage: (data) => data,
                    orElse: () => const Lang());
              }, builder: (context,data){
              return
                  Column(
                    children: [
                      Text( data is Lang_in ? "English" : "Urdu",
                        style: const TextStyle(fontSize: 30),
                      ),

                      const Text(
                        "Select Language",
                        style: TextStyle(fontSize: 40),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                       DropDownMenuWidget(label: data is Lang_in ? "English" : "Urdu",),
                    ],
                  );

            },
            ),


          ],
        ),
      ),
    );
  }
}

class DropDownMenuWidget extends StatelessWidget {
  const DropDownMenuWidget({
    super.key, required this.label,
  });

  final String label;


  @override
  Widget build(BuildContext context) {
    return  DropdownMenu(
        label:  Text(label),
        width: 200,
        dropdownMenuEntries: const [
          DropdownMenuEntry(value: "English", label: "English"),
          DropdownMenuEntry(value: "Urdu", label: "Urdu"),
        ],
        onSelected: (str) {
          if(str == "English"){
            BlocProvider.of<LanguageBloc>(context).add(const LanguageEvent.setLanguage(lang: "English"));
          }else{
            BlocProvider.of<LanguageBloc>(context).add(const LanguageEvent.setLanguage(lang: "Urdu"));
          }
        },
    );
  }
}
