import 'package:flutter/material.dart';

import 'presentation/select_character_screen.dart';

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
        ),
        home: const Scaffold(
          //body: TestScreen(),
          //body: ChatScreen(audioRecorderController: AudioRecorderController()),
          body: SelectCharacterScreen(),
        )
        //home: ChatScreen(audioRecorderController: AudioRecorderController()),
        );
  }
}
