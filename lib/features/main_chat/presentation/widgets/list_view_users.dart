import 'package:chat_meet_tinder/core/style/colors_app.dart';
import 'package:chat_meet_tinder/core/style/images_app.dart';
import 'package:chat_meet_tinder/features/main_chat/presentation/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:chat_meet_tinder/features/chat/data/user_list.dart';

class ListViewUsers extends StatelessWidget {
  const ListViewUsers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final user = users[index];
        return SizedBox(
          height: 76,
          width: double.infinity,
          child: Row(
            children: [
              if (index == 0)
                Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    color: ColorsApp.darkDominateColor,
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  child: const Center(
                    child: ImageIcon(
                        color: ColorsApp.dominateColor, AppIcons.likeIconFill),
                  ),
                )
              else
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChatScreen(
                                  user: user,
                                )));
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(user.appImage))),
                  ),
                ),
              const SizedBox(
                width: 12,
              ),
              if (index == 0)
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        user.message,
                        style: const TextStyle(
                            color: ColorsApp.white,
                            fontSize: 14,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      user.isNewMessage
                          ? const CircleAvatar(
                              backgroundColor: ColorsApp.white,
                              radius: 2,
                            )
                          : const SizedBox.shrink()
                    ],
                  ),
                )
              else
                Expanded(
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            user.lastOnline,
                            style: const TextStyle(
                                color: ColorsApp.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            user.message,
                            style: const TextStyle(
                                color: ColorsApp.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      const Spacer(),
                      user.isNewMessage
                          ? const CircleAvatar(
                              backgroundColor: ColorsApp.white,
                              radius: 2,
                            )
                          : const SizedBox.shrink()
                    ],
                  ),
                )
            ],
          ),
        );
      },
      itemCount: users.length,
    );
  }
}
