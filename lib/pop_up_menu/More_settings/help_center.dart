import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Onboarolors.blue,
        title: Row(
          children: [

            Text(
              'Help Center',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: ListTile(
              horizontalTitleGap: -1,
              leading: Icon(
                Icons.expand_circle_down_outlined,
                size: 30,
              ),
              title: Text(
                'FAQ',
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: ListTile(
              horizontalTitleGap: -1,
              leading: Icon(
                Icons.contact_support_outlined,
                size: 30,
              ),
              title: Text(
                'Contact Us',
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: ListTile(
              horizontalTitleGap: -1,
              leading: Icon(
                Icons.policy_outlined,
                size: 30,
              ),
              title: Text(
                'Terms & Privacy Policy',
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: ListTile(
              horizontalTitleGap: -1,
              leading: Icon(
                Icons.info,
                size: 30,
              ),
              title: Text(
                'App Info',
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
