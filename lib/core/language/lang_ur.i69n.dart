// ignore_for_file: unused_element, unused_field, camel_case_types, annotate_overrides, prefer_single_quotes
// GENERATED FILE, do not edit!
import 'package:i69n/i69n.dart' as i69n;
import 'lang.i69n.dart';

String get _languageCode => 'ur';
String get _localeName => 'ur';

String _plural(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i69n.plural(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);
String _ordinal(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i69n.ordinal(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);
String _cardinal(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i69n.cardinal(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);

class Lang_ur extends Lang {
  const Lang_ur();
  GeneralLang_ur get general => GeneralLang_ur(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'general':
        return general;
      default:
        return super[key];
    }
  }
}

class GeneralLang_ur extends GeneralLang {
  final Lang_ur _parent;
  const GeneralLang_ur(this._parent) : super(_parent);
  String get tech => "پھڑپھڑانا";
  String get country => "انڈیا";
  String get company => "گوگل";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'tech':
        return tech;
      case 'country':
        return country;
      case 'company':
        return company;
      default:
        return super[key];
    }
  }
}
