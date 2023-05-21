import 'package:chatappui/theme.dart';
import 'package:flutter/material.dart';
import 'package:chatappui/screens/welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //main page of app for title and theme
      title: 'Chat',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      themeMode: ThemeMode.system,
      //calling the welcome screen in home
      home: WelcomeScreen(),
    );
  }
}
