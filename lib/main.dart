import 'package:chat_meet_tinder/core/style/colors_app.dart';
import 'package:chat_meet_tinder/core/widgets/bottom_bar.dart';
import 'package:chat_meet_tinder/features/main_chat/presentation/screens/main_chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Ubuntu',
      ),
      home: const Scaffold(
          backgroundColor: ColorsApp.bgGray,
          bottomNavigationBar: BottomBar(),
          body: MainChatScreen()),
    );
  }
}
