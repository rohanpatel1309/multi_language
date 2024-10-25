import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:multi_language/core/language/lang.i69n.dart';
import 'package:multi_language/core/language/lang_in.i69n.dart';
import 'package:multi_language/core/language/lang_ur.i69n.dart';

part 'language_event.dart';
part 'language_state.dart';
part 'language_bloc.freezed.dart';


@singleton
class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {

  late Lang lang;
  Lang_in langIn = const Lang_in();
  Lang_ur langUr = const Lang_ur();

  LanguageBloc() : super(const LanguageState.initial()) {
    on<_SetLanguage>((event, emit) {
      // TODO: implement event handler
      if(event.lang == "English"){
        lang = langIn;
      }else{
        lang = langUr;
      }
      emit(_UpdatedLanguage(lang: lang));
    });
  }
}
