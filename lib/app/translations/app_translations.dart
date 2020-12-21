import 'package:get/get.dart';

import 'language.dart';
import 'languages/pt_BR.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        Languages.pt_BR.localeName: pt_BR,
      };
}
