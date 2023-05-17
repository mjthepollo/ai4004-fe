import 'package:ai4005_fe/presentation/select_character_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff411972),
        fontFamily: 'SUITE',
        primarySwatch: Colors.blue,
      ),
      home: const SelectCharacterScreen(),
      //home: ChatScreen(audioRecorderController: AudioRecorderController()),
    );
  }
}
