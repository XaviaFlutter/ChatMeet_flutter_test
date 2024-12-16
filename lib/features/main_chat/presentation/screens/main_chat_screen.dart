import 'package:chat_meet_tinder/core/style/colors_app.dart';
import 'package:chat_meet_tinder/core/style/images_app.dart';
import 'package:chat_meet_tinder/core/utils/mediaQuery.dart';
import 'package:chat_meet_tinder/features/main_chat/presentation/widgets/list_view_users.dart';
import 'package:chat_meet_tinder/features/main_chat/presentation/widgets/sheet_offer_contain.dart';

import 'package:flutter/material.dart';

class MainChatScreen extends StatelessWidget {
  const MainChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double paddingSheet = 22;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
                width: 1,
                color: ColorsApp.gray,
                strokeAlign: BorderSide.strokeAlignInside),
            color: ColorsApp.bgColor,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8))),
        height: context.screenHeight * 0.73,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
              child: Row(
                children: [
                  const Text(
                    'ЧАТЫ',
                    style: TextStyle(
                        fontSize: 24,
                        color: ColorsApp.white,
                        fontWeight: FontWeight.w400),
                  ),
                  const Spacer(),
                  const Text(
                    'OFF',
                    style: TextStyle(
                        fontSize: 16,
                        color: ColorsApp.white,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.transparent,
                          builder: (BuildContext context) {
                            return SheetOfferContain(
                                paddingSheet: paddingSheet);
                          });
                    },
                    child: Container(
                        width: 40,
                        height: 20,
                        decoration: const BoxDecoration(
                            color: ColorsApp.gray,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child:
                            Image.asset(scale: 4.2, AppElements.maskPrivate)),
                  )
                ],
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: ListViewUsers(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
