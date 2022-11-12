import 'package:flutter/material.dart';
import 'package:jobtestproject/constants.dart';

import 'components/bottom_navbar.dart';
import 'components/card_container.dart';
import 'components/tabbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Save money',
          style: TextStyle(
              color: kPrimaryColor, fontSize: 15, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        leading: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 1),
                )
              ]),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: kPrimaryColor,
            ),
            onPressed: () {},
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 3, color: kPrimaryColor)),
            child: const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add item',
        backgroundColor: kPrimaryColor,
        child: const Icon(Icons.add),
      ), //
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Column(
          children: const [
            TabBarTop(),
            SizedBox(height: 15),
            CardContainerMain(),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavabar(),
    );
  }
}
