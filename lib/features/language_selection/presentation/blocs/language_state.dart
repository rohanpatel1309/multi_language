part of 'language_bloc.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState.initial() = _Initial;
  const factory LanguageState.updatedLanguage({required Lang lang}) = _UpdatedLanguage;
}
