import 'package:cozy/models/tips.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  // const TipsCard({Key? key}) : super(key: key);
  final Tips tips;
  TipsCard(this.tips);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.imageUrl,
          width: 80,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            Text(
              'Updated ${tips.updatedAt}',
              style: greyTextStyle.copyWith(fontSize: 14),
            )
          ],
        ),
        Spacer(),
        Icon(
          Icons.chevron_right,
          color: greyColor,
        )
      ],
    );
  }
}
