import 'package:flutter/material.dart';

import '../../../constants.dart';

class TabBarTop extends StatelessWidget {
  const TabBarTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            const Text(
              'Your Money Boxes',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kHeadingColor,
                  fontSize: 18),
            ),
            const SizedBox(height: 5),
            Container(
              width: 120,
              height: 4,
              color: kPrimaryColor,
            )
          ],
        ),
        const Spacer(),
        const Text(
          'Savings Groups',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kSubHeadingColor,
              fontSize: 18),
        ),
      ],
    );
  }
}
