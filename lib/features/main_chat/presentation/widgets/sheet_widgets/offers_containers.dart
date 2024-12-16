import 'package:chat_meet_tinder/core/style/colors_app.dart';
import 'package:chat_meet_tinder/core/style/images_app.dart';
import 'package:chat_meet_tinder/core/utils/mediaQuery.dart';
import 'package:chat_meet_tinder/features/chat/data/offer_list.dart';
import 'package:flutter/material.dart';

class OffersContainer extends StatelessWidget {
  const OffersContainer({
    super.key,
    required this.offer,
  });

  final Profit offer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth < 650 ? context.screenWidth * 0.295 : 190,
      height: 80,
      decoration: BoxDecoration(
          color: ColorsApp.bgColor,
          border: Border.all(
            width: 0.5,
            color: ColorsApp.gray,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${offer.countGlass}',
                style: const TextStyle(color: ColorsApp.white),
              ),
              SizedBox(
                  width: 30,
                  height: 30,
                  child: Image.asset(AppElements.maskPrivate))
            ],
          ),
          Text(
            '${offer.cost} ₽',
            style: const TextStyle(color: ColorsApp.white),
          )
        ],
      ),
    );
  }
}
