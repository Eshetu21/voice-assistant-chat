import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:voice_assistant_chat/widgets/pallet.dart';
import 'package:voice_assistant_chat/screens/home_page.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Voice Assistant",
        theme: ThemeData(useMaterial3: true, fontFamily: 'Cera Pro').copyWith(
            scaffoldBackgroundColor: Pallete.whiteColor,
            appBarTheme:
                const AppBarTheme(backgroundColor: Pallete.whiteColor)),
        home: const HomePage());
  }
}
