import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 20,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'INÍCIO',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'PERFIL',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.logout),
          label: 'SAIR',
        ),
      ],
    );
  }
}
