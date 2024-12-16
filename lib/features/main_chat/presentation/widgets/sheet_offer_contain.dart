import 'package:flutter/material.dart';
import 'package:chat_meet_tinder/core/style/colors_app.dart';
import 'package:chat_meet_tinder/core/style/images_app.dart';
import 'package:chat_meet_tinder/core/utils/mediaQuery.dart';
import 'package:chat_meet_tinder/features/chat/data/offer_list.dart';
import 'package:chat_meet_tinder/features/main_chat/presentation/widgets/sheet_widgets/offers_containers.dart';

class SheetOfferContain extends StatelessWidget {
  const SheetOfferContain({
    super.key,
    required this.paddingSheet,
  });

  final double paddingSheet;

  @override
  Widget build(BuildContext context) {
    print('${context.screenWidth}');
    return Container(
      height: context.screenHeight * 0.53,
      color: ColorsApp.sheetColor,
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: paddingSheet),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Center(
                      child: SizedBox(
                        width: 170,
                        height: 70,
                        child: Image.asset(AppElements.maskPrivateSheet),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const ImageIcon(
                          AppIcons.closeRounded,
                          size: 10,
                          color: ColorsApp.bgGray,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: paddingSheet),
                RichText(
                  text: const TextSpan(
                    text: 'РЕЖИМ ',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: ColorsApp.white,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: ' ИНКОГНИТО ',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: ColorsApp.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 'НА 24 ЧАСА',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: ColorsApp.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: paddingSheet),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: paddingSheet),
                  child: const Text(
                    'Стань невидимкой в ленте и чатах, скрой\nобъявление и наслаждайся незамеченным',
                    style: TextStyle(
                      color: ColorsApp.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                SizedBox(
                  width: context.screenWidth,
                  height: 100,
                  child: ListView.builder(
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final offer = offers[index];
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            OffersContainer(offer: offer),
                            if (offer.isProfit)
                              Positioned(
                                top: -30,
                                left: 0,
                                right: 0,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(AppElements.flameOffer),
                                    ),
                                  ),
                                  height: 50,
                                  width: 50,
                                  child: Center(
                                    child: Text(
                                      offer.profit.toString(),
                                      style: const TextStyle(
                                        color: ColorsApp.offerColorText,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      );
                    },
                    itemCount: offers.length,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsApp.bgButtonColor,
                      foregroundColor: ColorsApp.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                    onPressed: () {},
                    child: const SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: Center(child: Text('Купить')),
                    ),
                  ),
                ),
                SizedBox(height: paddingSheet),
                const Text(
                  'УСЛОВИЯ И ПОЛОЖЕНИЯ',
                  style: TextStyle(
                    color: ColorsApp.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: paddingSheet),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
