import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';

import '../Common/custom_select_contacts.dart';

class CallDetails extends StatelessWidget {
  const CallDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: Onboarolors.blue,
        title: Row(
          children: [
            // Padding(
            //   padding: const EdgeInsets.only(left: 5.0 , right: 8),
            //   child: Icon(Icons.arrow_back),
            // ),

            Text(
              'Select Contacts',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 25,
          ),
          Icon(Icons.more_horiz_rounded),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0 ,  left: 5),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/group person.png'),
                  minRadius: 25,
                  maxRadius: 25,
                ),
                title: Text(
                  'New Group',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0 , left: 5),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/person.png'),
                  minRadius: 25,
                  maxRadius: 25,
                ),
                title: Text(
                  'New Contact',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.document_scanner , color: Onboarolors.blue,),

              ),
            ),

            CustomSelectContacts(
                ImageSource: 'assets/images/chat 5.jpg',
                CallerName: 'Rahima Gull',
                CallerNumber: '+1230-863-330',
                CallIcon1: Icons.call,
                VideoCallIcon: Icons.video_call),
            CustomSelectContacts(
                ImageSource: 'assets/images/chat 9.jpg',
                CallerName: 'Noor Ullah Jan',
                CallerNumber: '+1730-863-330',
                CallIcon1: Icons.call,
                VideoCallIcon: Icons.video_call),
            CustomSelectContacts(
                ImageSource: 'assets/images/chat 2.jpg',
                CallerName: 'Zeeshan Umer',
                CallerNumber: '+5431-863-330',
                CallIcon1: Icons.call,
                VideoCallIcon: Icons.video_call),
            CustomSelectContacts(
                ImageSource: 'assets/images/chat 6.jpg',
                CallerName: 'Sarina Williams',
                CallerNumber: '+1870-863-330',
                CallIcon1: Icons.call,
                VideoCallIcon: Icons.video_call),
            CustomSelectContacts(
                ImageSource: 'assets/images/chat 7.jpg',
                CallerName: 'Maria Sharpova',
                CallerNumber: '+1330-863-330',
                CallIcon1: Icons.call,
                VideoCallIcon: Icons.video_call),
            CustomSelectContacts(
                ImageSource: 'assets/images/chat 8.jpg',
                CallerName: 'Samar Noor',
                CallerNumber: '+1430-863-330',
                CallIcon1: Icons.call,
                VideoCallIcon: Icons.video_call),CustomSelectContacts(
                ImageSource: 'assets/images/chat 11.jpg',
                CallerName: 'Kinza Khan',
                CallerNumber: '+1730-863-330',
                CallIcon1: Icons.call,
                VideoCallIcon: Icons.video_call),

          ],
        ),
      ),
    );
  }
}
