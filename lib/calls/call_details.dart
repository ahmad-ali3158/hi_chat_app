import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';

import '../Common/custom_select_contacts.dart';

class CallInfo extends StatelessWidget {
  const CallInfo({Key? key}) : super(key: key);

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
              'Call info',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
        actions: [
          PopupMenuButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            position: PopupMenuPosition.under,
            itemBuilder: (Context) {
              return [
                PopupMenuItem(
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.delete_outline),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Remove from call log'),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.block),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Block'),
                      ],
                    ),
                  ),
                ),
              ];
            },
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                  color: Onboarolors.blue,
                  borderRadius: BorderRadius.circular(10)),
              child: Icon(
                Icons.more_horiz_rounded,
                size: 20,
                color: Onboarolors.black,
              ),
            ),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Column(
        children: [
          CustomSelectContacts(
              ImageSource: 'assets/images/chat1.jpg',
              CallerName: 'Chantal Shelburne',
              CallerNumber: '+1230-863-330',
              CallIcon1: Icons.call,
              VideoCallIcon: Icons.video_call),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
            child: Container(
              height: 1,
              color: Onboarolors.halkegrey,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 20),
            child: Container(
              height: 40,
              width: double.infinity,
              child: Text(
                'Today , December 22, 2024',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ListTile(
              leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Onboarolors.yellow,
                      borderRadius: BorderRadius.circular(12)),
                  child: Icon(
                    Icons.arrow_upward,
                    size: 20,
                    color: Onboarolors.black,
                  )),
              title: Text(
                'Outgoing',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('16:25'),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    '08:29 mins',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('20.00')
                ],
              )),
        ],
      ),
    );
  }
}
