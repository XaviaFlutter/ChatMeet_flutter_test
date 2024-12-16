import 'package:chat_meet_tinder/core/style/images_app.dart';

class User {
  final String message;
  final String lastOnline;
  final String appImage;
  final bool isNewMessage;

  User(
      {required this.isNewMessage,
      required this.message,
      required this.lastOnline,
      required this.appImage});
}

final List<User> users = [
  User(
      isNewMessage: true,
      message: '44 человека тебя лайкнули',
      lastOnline: '',
      appImage: ''),
  User(
      isNewMessage: false,
      message: 'Отлично выглядишь',
      lastOnline: '23 ч 43 мин',
      appImage: AppImage.firstUser),
  User(
      isNewMessage: true,
      message: 'Встретимся? Я рядом',
      lastOnline: '20 ч 40 мин',
      appImage: AppImage.secondUser),
  User(
      isNewMessage: false,
      message: 'Встретимся?',
      lastOnline: '18 ч 40 мин',
      appImage: AppImage.thirdUser),
  User(
      isNewMessage: false,
      message: 'Давно тебя хочу',
      lastOnline: '09 ч 40 мин',
      appImage: AppImage.fourthUser),
  User(
      isNewMessage: false,
      message: 'Я в ванной.. Скинь фото...',
      lastOnline: '03 ч 04 мин',
      appImage: AppImage.fifthUser),
  User(
      isNewMessage: false,
      message: 'Привет',
      lastOnline: '01 ч 09 мин',
      appImage: AppImage.sixthUser),
];
