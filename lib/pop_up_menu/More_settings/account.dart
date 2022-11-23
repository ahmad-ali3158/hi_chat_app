import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: Onboarolors.blue,
        title: Row(
          children: [

            Text(
              'Account',
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
                Icons.security_outlined,
                size: 30,
              ),
              title: Text(
                'Privacy',
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
                Icons.call_outlined,
                size: 30,
              ),
              title: Text(
                'Change Number',
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
                Icons.email_outlined,
                size: 30,
              ),
              title: Text(
                'Change Email',
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
                Icons.download_outlined,
                size: 30,
              ),
              title: Text(
                'Download Account Info',
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
                Icons.delete_outline,
                size: 30,
              ),
              title: Text(
                'Delete My Account',
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
