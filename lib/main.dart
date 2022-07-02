import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rascunho/colors_theme.dart';

import 'models/theme_model.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorsTheme colorsTheme = ColorsTheme();
    ThemeData temaLight = colorsTheme.light;
    ThemeData temaDark = colorsTheme.dark;

    return ChangeNotifierProvider(
      create: (_) => ThemeModel(),
      child: Consumer(builder: (context, ThemeModel themeNotifier, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeNotifier.isDark ? temaDark : temaLight,
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
      }),
    );
  }
}
