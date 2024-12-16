import 'package:chat_meet_tinder/core/style/colors_app.dart';
import 'package:chat_meet_tinder/core/style/images_app.dart';
import 'package:chat_meet_tinder/core/utils/mediaQuery.dart';
import 'package:chat_meet_tinder/features/chat/data/user_list.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final User user;
  const ChatScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: ColorsApp.bgGray,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        size: 15,
                        Icons.arrow_back_ios_new,
                        color: ColorsApp.white,
                      )),
                  CircleAvatar(
                      radius: 15, backgroundImage: AssetImage(user.appImage)),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(
                      Icons.more_vert,
                      color: ColorsApp.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Container(
                height: 40,
                width: double.infinity,
                color: ColorsApp.dominateColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      const SizedBox(
                          width: 25,
                          height: 25,
                          child: Image(image: AssetImage(AppElements.rocket))),
                      const Text(
                        '2 общих соблазна',
                        style: TextStyle(
                            fontSize: 13,
                            color: ColorsApp.white,
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.italic),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const ImageIcon(
                            AppIcons.close,
                            color: ColorsApp.white,
                            size: 10,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1,
                      color: ColorsApp.gray,
                      strokeAlign: BorderSide.strokeAlignInside),
                  color: ColorsApp.bgColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8))),
              height: MediaQuery.of(context).size.height * 0.8 -
                  MediaQuery.of(context).viewInsets.bottom,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 55,
                  ),
                  const Text(
                    'Начни общение',
                    style: TextStyle(
                        color: ColorsApp.Chatgray,
                        fontSize: 12,
                        fontWeight: FontWeight.w300),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            size: 25,
                            Icons.add,
                            color: ColorsApp.Chatgray,
                          )),
                      Expanded(
                          child: SizedBox(
                        width: double.infinity,
                        height: 33,
                        child: TextField(
                          style: const TextStyle(
                              fontSize: 14,
                              color: ColorsApp.white,
                              fontWeight: FontWeight.w300),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 5, left: 10),
                              suffixIcon: Image.asset(
                                AppElements.emoji1,
                                scale: 4,
                              ),
                              hintText: 'Сообщение...',
                              hintStyle: const TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                  color: ColorsApp.Chatgray),
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  borderSide: BorderSide(
                                      width: 1, color: ColorsApp.white))),
                        ),
                      )),
                      IconButton(
                          onPressed: () {},
                          icon: const ImageIcon(
                            size: 20,
                            AppIcons.micro,
                            color: ColorsApp.Chatgray,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
