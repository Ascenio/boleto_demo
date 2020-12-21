import 'package:flutter/material.dart';

class Language {
  final String languageCode;
  final String countryCode;
  String get localeName => '${languageCode}_$countryCode';

  const Language._({
    @required this.languageCode,
    @required this.countryCode,
  });
}

abstract class Languages {
  static const pt_BR = Language._(languageCode: 'pt', countryCode: 'BR');

  static Locale localeFrom(Language language) {
    return Locale(language.languageCode, language.countryCode);
  }
}
