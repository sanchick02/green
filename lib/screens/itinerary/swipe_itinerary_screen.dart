import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/styles.dart';
import 'package:green/widgets/button.dart';
import 'package:green/widgets/itinerary_card.dart';
import 'package:swipe_cards/draggable_card.dart';
import 'package:swipe_cards/swipe_cards.dart';

class SwipeItineraryScreen extends StatefulWidget {
  const SwipeItineraryScreen({Key? key}) : super(key: key);

  @override
  State<SwipeItineraryScreen> createState() => _SwipeItineraryScreenState();
}

class _SwipeItineraryScreenState extends State<SwipeItineraryScreen> {
  final List<SwipeItem> _swipeItems = [];
  late MatchEngine _matchEngine;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final List<String> _itineraryTitles = [
    "Itinerary 1",
    "Itinerary 2",
    "Itinerary 3",
    "Itinerary 4",
    "Itinerary 5"
  ];

  bool isLiked = false;
  bool isNoped = false;

  @override
  void initState() {
    for (int i = 0; i < _itineraryTitles.length; i++) {
      _swipeItems.add(SwipeItem(
        content: _itineraryTitles[i],
        likeAction: () {
          setState(() {
            isLiked = true;
            isNoped = false;
          });
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              "Liked ${_itineraryTitles[i]}",
              style: AppFonts.smallLightTextWhite,
            ),
            duration: const Duration(milliseconds: 500),
          ));
        },
        nopeAction: () {
          setState(() {
            isNoped = true;
            isLiked = false;
          });
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              "Nope ${_itineraryTitles[i]}",
              style: AppFonts.smallLightTextWhite,
            ),
            duration: const Duration(milliseconds: 500),
          ));
        },
        onSlideUpdate: (SlideRegion? region) async {
          setState(() {
            isLiked = false;
            isNoped = false;
          });
          print("Region $region");
        },
      ));
    }

    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(gradient: AppColor.backgroundGradient()),
          child: SingleChildScrollView(
            padding: AppStyles.edgeInsetsLR,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                        ;
                      },
                      icon: Image.asset(
                        "lib/assets/icons/arrow_back_gray_small.png",
                        width: 40,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      "lib/assets/images/topbar_logo.png",
                      width: 80,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Suggested Itineraries",
                  style: AppFonts.largeMediumText,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 660,
                  child: SwipeCards(
                    matchEngine: _matchEngine,
                    itemBuilder: (BuildContext context, int index) {
                      return ItineraryCard(
                        title: _swipeItems[index].content,
                        // You can pass any other necessary data here
                      );
                    },
                    onStackFinished: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                          "No More Itineraries",
                          style: AppFonts.smallLightTextWhite,
                        ),
                        duration: const Duration(milliseconds: 500),
                      ));
                    },
                    itemChanged: (SwipeItem item, int index) {
                      print("item: ${item.content}, index: $index");
                    },
                    upSwipeAllowed: false,
                    fillSpace: true,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isNoped = true;
                          isLiked = false;
                        });
                        _matchEngine.currentItem?.nope();
                      },
                      child: DefaultButton(
                        text: "Nope",
                        backgroundColor: isNoped
                            ? Colors.red
                            : const Color(0xff252525).withOpacity(0.10),
                        height: 40,
                        fontStyle: isNoped
                            ? AppFonts.extraSmallLightTextWhite
                            : AppFonts.extraSmallLightText,
                        width: (MediaQuery.of(context).size.width - 80) / 2,
                        padding: EdgeInsets.zero,
                        press: () {},
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isLiked = true;
                          isNoped = false;
                        });
                        _matchEngine.currentItem?.like();
                      },
                      child: DefaultButton(
                        press: () {},
                        text: "Save",
                        backgroundColor: isLiked
                            ? Colors.green
                            : const Color(0xff252525).withOpacity(0.10),
                        height: 40,
                        fontStyle: isLiked
                            ? AppFonts.extraSmallLightTextWhite
                            : AppFonts.extraSmallLightText,
                        width: (MediaQuery.of(context).size.width - 80) / 2,
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
