import 'package:flutter/material.dart';

abstract class AppIcons {
  static const AssetImage close =
      AssetImage('assets/images/icons/close_icon.png');
  static const ImageIcon likeIcon =
      ImageIcon(AssetImage('assets/images/icons/like_icon_outline.png'));
  static const ImageIcon chatIcon =
      ImageIcon(AssetImage('assets/images/icons/chat_icon.png'));
  static const ImageIcon menuIcon =
      ImageIcon(AssetImage('assets/images/icons/menu_icon.png'));
  static const ImageIcon settingsIcon =
      ImageIcon(AssetImage('assets/images/icons/settings_icon.png'));
  static const AssetImage likeIconFill =
      AssetImage('assets/images/icons/like_icon_fill.png');
  static const AssetImage micro =
      AssetImage('assets/images/icons/micro_icon.png');
  static const AssetImage closeRounded =
      AssetImage('assets/images/icons/close_icon_rounded.png');
}

abstract class AppImage {
  static const String firstUser = 'assets/images/user1.jpg';
  static const String secondUser = 'assets/images/user2.jpg';
  static const String thirdUser = 'assets/images/user3.jpg';
  static const String fourthUser = 'assets/images/user4.jpg';
  static const String fifthUser = 'assets/images/user5.jpg';
  static const String sixthUser = 'assets/images/user6.jpg';
}

abstract class AppElements {
  static const String maskPrivate = 'assets/images/elements/mask_private.png';
  static const String rocket = 'assets/images/elements/rocket_element.png';
  static const String emoji1 = 'assets/images/elements/emoji1.png';
  static const String maskPrivateSheet =
      'assets/images/elements/mask_private_subscription.png';
  static const String flameOffer = 'assets/images/elements/offer_flame.png';
}
