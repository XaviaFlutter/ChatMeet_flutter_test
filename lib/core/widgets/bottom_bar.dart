import 'package:chat_meet_tinder/core/style/colors_app.dart';
import 'package:chat_meet_tinder/core/style/images_app.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 22,
          type: BottomNavigationBarType.fixed,
          currentIndex: 1,
          backgroundColor: ColorsApp.darkBgColor,
          unselectedItemColor: ColorsApp.dominateColor,
          selectedItemColor: ColorsApp.selectedColor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: AppIcons.menuIcon,
              label: '',
            ),
            BottomNavigationBarItem(
              icon: AppIcons.chatIcon,
              label: '',
            ),
            BottomNavigationBarItem(
              icon: AppIcons.likeIcon,
              label: '',
            ),
            BottomNavigationBarItem(
              icon: AppIcons.settingsIcon,
              label: '',
            ),
          ]),
    );
  }
}
