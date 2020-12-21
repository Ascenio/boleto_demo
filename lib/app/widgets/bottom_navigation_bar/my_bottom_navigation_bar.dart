import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../translations/translation_keys.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 20,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: TranslationKeys.home.tr,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: TranslationKeys.profile.tr,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.logout),
          label: TranslationKeys.logout.tr,
        ),
      ],
    );
  }
}
