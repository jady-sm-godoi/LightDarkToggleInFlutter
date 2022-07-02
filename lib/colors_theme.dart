import 'package:flutter/material.dart';

///Classe para a configuração das cores para o modo light e dark. Ao mudar as cores aqui, tudo muda no app.
class ColorsTheme {
  ThemeData light = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      color: Color(0xFF304D63),
      titleTextStyle: TextStyle(
          color: Color(0xfff2d096),
          // color: Color.fromARGB(255, 85, 73, 52),
          fontWeight: FontWeight.bold),
    ),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: Color(0xffed8975)),
    scaffoldBackgroundColor: const Color(0xffb2e7e8),
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        color: Color.fromARGB(255, 85, 73, 52),
      ),
      headline4: TextStyle(
        color: Color.fromARGB(255, 85, 73, 52),
      ),
    ),
  );

  ThemeData dark = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      color: Color(0xffb2e7e8),
      titleTextStyle: TextStyle(
          color: Color.fromARGB(255, 85, 73, 52), fontWeight: FontWeight.bold),
    ),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: Color(0xffed8975)),
    scaffoldBackgroundColor: const Color(0xFF304D63),
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        color: Color(0xfff2d096),
      ),
      headline4: TextStyle(
        color: Color(0xfff2d096),
      ),
    ),
  );
}
