import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:note_press/services/theme_services.dart';
import 'package:note_press/ui/homepage.dart';
import 'package:note_press/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: MyThemes.light,
      darkTheme: MyThemes.dark,
      themeMode: ThemeService().theme,
      // themeMode: ThemeMode.light,
      home: const HomePage(),
    );
  }
}
