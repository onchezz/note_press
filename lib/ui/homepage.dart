import 'package:flutter/material.dart';
import 'package:note_press/services/theme_services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: Text("Home is where i go"),
    );
  }

  _appbar() {
    return AppBar(
      leading: GestureDetector(
          onTap: () {
            ThemeService().switchTheme();
          },
          child: const Icon(Icons.nightlight_rounded)),
      actions: [Icon(Icons.person)],
    );
  }
}
