import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/custom_invite.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';

class InviteFriends extends StatelessWidget {
  const InviteFriends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Onboarolors.blue,
        title: Row(
          children: [

            Text(
              'Invite Friends',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomInvite(
              ImageSouce: 'assets/images/chat1.jpg',
              CallerName: 'Charlli Harmshon',
              PhoneNumber: "+4324-3323-323",
              continerColor: Onboarolors.blue,
              textColor: Onboarolors.black,
              Invited: 'Invite',
            ),
            CustomInvite(
              ImageSouce: 'assets/images/chat 4.jpg',
              CallerName: 'Lervren Laboy',
              PhoneNumber: "+5243-3323-323",
              continerColor: Onboarolors.black,
              textColor: Onboarolors.blue,
              Invited: 'Invited',
            ),
            CustomInvite(
              ImageSouce: 'assets/images/chat 3.jpg',
              CallerName: 'Darron Kulikowski',
              PhoneNumber: "+8624-3323-323",
              continerColor: Onboarolors.blue,
              textColor: Onboarolors.black,
              Invited: 'Invite',
            ),
            CustomInvite(
              ImageSouce: 'assets/images/chat 6.jpg',
              CallerName: 'Fredo Barnes',
              PhoneNumber: "+4324-3323-323",
              continerColor: Onboarolors.blue,
              textColor: Onboarolors.black,
              Invited: 'Invite',
            ),
            CustomInvite(
              ImageSouce: 'assets/images/chat 7.jpg',
              CallerName: 'Kathrine Lanford',
              PhoneNumber: "+4243-3323-323",
              continerColor: Onboarolors.black,
              textColor: Onboarolors.blue,
              Invited: 'Invite',
            ),
            CustomInvite(
              ImageSouce: 'assets/images/chat 8.jpg',
              CallerName: 'Jos Buttler',
              PhoneNumber: "+4324-3323-323",
              continerColor: Onboarolors.blue,
              textColor: Onboarolors.black,
              Invited: 'Invite',
            ),
            CustomInvite(
              ImageSouce: 'assets/images/chat 9.jpg',
              CallerName: 'Walton Chankbora ',
              PhoneNumber: "+5453-3323-323",
              continerColor: Onboarolors.black,
              textColor: Onboarolors.blue,
              Invited: 'Invite',
            ),
            CustomInvite(
              ImageSouce: 'assets/images/chat 10.jpg',
              CallerName: 'Kristina',
              PhoneNumber: "+9876-3323-323",
              continerColor: Onboarolors.black,
              textColor: Onboarolors.blue,
              Invited: 'Invite',
            ),
            CustomInvite(
              ImageSouce: 'assets/images/chat 11.jpg',
              CallerName: 'Sharmin Ubaid',
              PhoneNumber: "+4324-3323-323",
              continerColor: Onboarolors.blue,
              textColor: Onboarolors.black,
              Invited: 'Invite',
            ),
          ],
        ),
      ),
    );
  }
}
