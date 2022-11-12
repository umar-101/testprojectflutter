import 'package:flutter/material.dart';

import '../../../constants.dart';

class CustomBottomNavabar extends StatelessWidget {
  const CustomBottomNavabar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black,
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: BottomAppBar(
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Row(
            children: const [
              BottomNavBarItem(
                bgColor: Color(0xFFE0F7F3),
                iconColor: kPrimaryColor,
                textColor: kPrimaryColor,
                title: 'Pay',
                iconUrl: Icons.euro_rounded,
              ),
              BottomNavBarItem(
                bgColor: kPrimaryColor,
                iconColor: Colors.white,
                textColor: Colors.white,
                title: 'Card',
                iconUrl: Icons.credit_card_rounded,
              ),
              BottomNavBarItem(
                bgColor: Color(0xFFF7F7FC),
                iconColor: kHeadingColor,
                textColor: kHeadingColor,
                title: 'Learn',
                iconUrl: Icons.notes_rounded,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavBarItem extends StatelessWidget {
  final Color bgColor, iconColor, textColor;
  final String title;
  final IconData iconUrl;
  const BottomNavBarItem({
    Key? key,
    required this.bgColor,
    required this.iconColor,
    required this.textColor,
    required this.title,
    required this.iconUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 30,
          decoration: BoxDecoration(
              color: bgColor, borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              Icon(
                iconUrl,
                color: iconColor,
              ),
              const SizedBox(width: 5),
              Text(title, style: TextStyle(fontSize: 17, color: textColor))
            ],
          ),
        ),
      ),
    );
  }
}
