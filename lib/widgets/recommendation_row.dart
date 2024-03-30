import 'package:flutter/material.dart';
import 'package:green/data/recommendations.dart';
import 'package:green/presets/styles.dart';
import 'package:green/widgets/recommendation_card.dart';

class RecommendationRow extends StatelessWidget {
  const RecommendationRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppStyles.edgeInsetsLR,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(
            recommendationList.length,
            (index) => RecommendationCard(
              recommendation: recommendationList[index],
              margin: EdgeInsets.only(
                left: 15,
                right: index == recommendationList.length - 1 ? 15 : 0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
