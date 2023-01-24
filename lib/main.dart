import 'package:codigo6_whatsapp/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Whatsapp",
      theme: ThemeData(
        // brightness: Brightness.dark,
          scaffoldBackgroundColor:Colors.white,
          fontFamily: "Manrope",
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff075E56),
        ),
        // useMaterial3: true,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color(0xff10CE5F),
        )
      ),
      home: HomePage(),
    );
  }
}
