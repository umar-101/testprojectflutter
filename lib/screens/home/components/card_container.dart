import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../constants.dart';

class CardContainerMain extends StatelessWidget {
  const CardContainerMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            CardContainer(
              bgColor: Color(0xFFFDCDCD),
              fillAmount: 0.7,
              title: 'Basketball',
              amount: '40 €',
              iconUrl: Icons.home,
            ),
            SizedBox(width: 15),
            CardContainer(
              bgColor: Color(0xFFFDEFCD),
              fillAmount: 0.9,
              title: 'Trip to Egypt',
              amount: '2.200 €',
              iconUrl: Icons.area_chart_rounded,
            ),
          ],
        ),
        const SizedBox(height: 25),
        Row(
          children: const [
            CardContainer(
              bgColor: Color(0xFFCDDDFD),
              fillAmount: 0.4,
              title: 'Music school',
              amount: '300 €',
              iconUrl: Icons.museum_outlined,
            ),
            SizedBox(width: 15),
            CardContainer(
              bgColor: Color(0xFFCDF0FD),
              fillAmount: 0.6,
              title: 'Laptop',
              amount: '500 €',
              iconUrl: Icons.laptop,
            ),
          ],
        )
      ],
    );
  }
}

class CardContainer extends StatelessWidget {
  final Color bgColor;
  final double fillAmount;
  final String title, amount;
  final IconData iconUrl;

  const CardContainer({
    Key? key,
    required this.bgColor,
    required this.fillAmount,
    required this.title,
    required this.amount,
    required this.iconUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: bgColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  iconUrl,
                  size: 100,
                  color: const Color(0xFF4A4A4A),
                ),
                const SizedBox(height: 10),
                LinearPercentIndicator(
                  lineHeight: 8,
                  percent: fillAmount,
                  backgroundColor: Colors.white,
                  progressColor: kPrimaryColor,
                  barRadius: const Radius.circular(20),
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
          Text(
            title,
            style: const TextStyle(
                fontSize: 18,
                color: kHeadingColor,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),
          Text(
            amount,
            style: const TextStyle(
              fontSize: 18,
              color: kSubHeadingColor,
            ),
          )
        ],
      ),
    );
  }
}
