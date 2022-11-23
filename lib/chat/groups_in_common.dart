import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';

import '../Common/custom_status.dart';

class GroupInCommon extends StatelessWidget {
  const GroupInCommon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Onboarolors.blue,
        title: Row(
          children: [

            Text(
              'Groups in Commons',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.more_horiz_rounded),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.group_add),
                minRadius: 25,
                maxRadius: 25,
              ),
              title: Text(
                'New Group With Jenny',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          CustomStatus(
              ImageSouce: 'assets/images/group1.jpg',
              CallerName: "College Students",
              PhoneNumber: "You, jerry, John, jacob, Samule & 32 others"),
          CustomStatus(
              ImageSouce: 'assets/images/group2.jpg',
              CallerName: "Two Thousand Gentrations",
              PhoneNumber: "You, jerry, John, Samule & 242 others"),
          CustomStatus(
              ImageSouce: 'assets/images/group6.jpg',
              CallerName: "Fast And Farious",
              PhoneNumber: "You,  jacob, Samule & 211 others"),
          CustomStatus(
              ImageSouce: 'assets/images/group7.jpg',
              CallerName: "Party, Study, Repeat",
              PhoneNumber: "You, jerry, John,  & 311 others"),
          CustomStatus(
              ImageSouce: 'assets/images/grup3.jpeg',
              CallerName: "50 Shades of Slay",
              PhoneNumber: "You, Samule & 121 others"),
          CustomStatus(
              ImageSouce: 'assets/images/grup4.jpg',
              CallerName: "Self Healing",
              PhoneNumber: "You, jerry,  Samule & 232 others"),
          CustomStatus(
              ImageSouce: 'assets/images/group2.jpg',
              CallerName: "Tiktokers Assemble",
              PhoneNumber: "You,  John, jacob, Samule & 20 others"),
        ],
      ),
    );
  }
}
