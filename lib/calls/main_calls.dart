import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/custom_call.dart';

import '../Common/custom_select_contacts.dart';
import '../Common/onboarding_colors.dart';
import '../Home/select_contacts.dart';
import 'call_details.dart';
import 'call_details_three.dart';
import 'call_details_two.dart';
import 'select_contact_in_call.dart';

class MainCall extends StatelessWidget {
  const MainCall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 48,
            child: FloatingActionButton(
              backgroundColor: Onboarolors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CallDetails()),
                );
              },
              child: Icon(
                Icons.call,
                color: Onboarolors.black,
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomCall(
                ImageSource: 'assets/images/chat 9.jpg',
                CallerName: 'Chris Jorden',
                BoxColor: Onboarolors.red,
                CustomIcon: Icons.cancel_rounded,
                Status: 'Missed (6)',
                Timing: 'Today, 13:20 ',
                CallICon1: Icons.call ,
                ONTAP: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MissedCall()),
                  );
                },
            ),
            CustomCall(
              ImageSource: 'assets/images/chat1.jpg',
              CallerName: 'Chantal Shelburne',
              BoxColor: Onboarolors.yellow,
              CustomIcon: Icons.arrow_upward,
              Status: 'Outgoing',
              Timing: 'Yesterday, 20:50 ',
              CallICon1: Icons.call ,
              ONTAP: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CallInfo()),
                );
              },
            ),
            CustomCall(
              ImageSource: 'assets/images/chat 4.jpg',
              CallerName: 'Lervren Laboy',
              BoxColor: Onboarolors.blue,
              CustomIcon: Icons.arrow_downward,
              Status: 'Incoming',
              Timing: 'Dec 23, 13:20 ',
              CallICon1: Icons.call ,
              ONTAP: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Incoming()),
                );
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/chat 3.jpg'),
                minRadius: 30,
                maxRadius: 30,
              ),
              title: Text(
                'Darron Kulikowski',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          color: Onboarolors.red,
                          borderRadius: BorderRadius.circular(4)),
                      child: Icon(
                        Icons.cancel_rounded,
                        size: 9,
                        color: Onboarolors.black,
                      )),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Missed (5)',
                    style: TextStyle(fontSize: 13),
                  ),
                  Container(
                    height: 10.0,
                    width: 1.0,
                    color: Onboarolors.white,
                    margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                  ),
                  Text('Dec 29, 09: 29'),
                ],
              ),
              trailing: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(
                    Icons.call,
                    color: Onboarolors.blue,
                  )),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/chat 4.jpg'),
                minRadius: 30,
                maxRadius: 30,
              ),
              title: Text(
                'Elmer Lavery',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          color: Onboarolors.yellow,
                          borderRadius: BorderRadius.circular(4)),
                      child: Icon(
                        Icons.arrow_upward,
                        size: 9,
                        color: Onboarolors.black,
                      )),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Outgoing',
                    style: TextStyle(fontSize: 13),
                  ),
                  Container(
                    height: 10.0,
                    width: 1.0,
                    color: Onboarolors.white,
                    margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                  ),
                  Text('Dec 30, 07: 13'),
                ],
              ),
              trailing: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(
                    Icons.video_call,
                    color: Onboarolors.blue,
                  )),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/chat 6.jpg'),
                minRadius: 30,
                maxRadius: 30,
              ),
              title: Text(
                'Lervren Laboy',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          color: Onboarolors.blue,
                          borderRadius: BorderRadius.circular(4)),
                      child: Icon(
                        Icons.arrow_downward,
                        size: 9,
                        color: Onboarolors.black,
                      )),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Incoming',
                    style: TextStyle(fontSize: 13),
                  ),
                  Container(
                    height: 10.0,
                    width: 1.0,
                    color: Onboarolors.white,
                    margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                  ),
                  Text('Dec 19, 09: 29'),
                ],
              ),
              trailing: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(
                    Icons.call,
                    color: Onboarolors.blue,
                  )),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/chat 7.jpg'),
                minRadius: 30,
                maxRadius: 30,
              ),
              title: Text(
                'Fredo Barnes',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          color: Onboarolors.red,
                          borderRadius: BorderRadius.circular(4)),
                      child: Icon(
                        Icons.cancel_rounded,
                        size: 9,
                        color: Onboarolors.black,
                      )),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Missed (7)',
                    style: TextStyle(fontSize: 13),
                  ),
                  Container(
                    height: 10.0,
                    width: 1.0,
                    color: Onboarolors.white,
                    margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                  ),
                  Text('Today , 19.25 '),
                ],
              ),
              trailing: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(
                    Icons.call,
                    color: Onboarolors.blue,
                  )),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/chat 8.jpg'),
                minRadius: 30,
                maxRadius: 30,
              ),
              title: Text(
                'Harry Magware',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          color: Onboarolors.blue,
                          borderRadius: BorderRadius.circular(4)),
                      child: Icon(
                        Icons.arrow_downward,
                        size: 9,
                        color: Onboarolors.black,
                      )),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Incoming',
                    style: TextStyle(fontSize: 13),
                  ),
                  Container(
                    height: 10.0,
                    width: 1.0,
                    color: Onboarolors.white,
                    margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                  ),
                  Text('Yesterday , 20.49 '),
                ],
              ),
              trailing: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(
                    Icons.video_call,
                    color: Onboarolors.blue,
                  )),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/chat 11.jpg'),
                minRadius: 30,
                maxRadius: 30,
              ),
              title: Text(
                'Rahima Gull',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          color: Onboarolors.yellow,
                          borderRadius: BorderRadius.circular(4)),
                      child: Icon(
                        Icons.arrow_upward,
                        size: 9,
                        color: Onboarolors.black,
                      )),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Outgoing',
                    style: TextStyle(fontSize: 13),
                  ),
                  Container(
                    height: 10.0,
                    width: 1.0,
                    color: Onboarolors.white,
                    margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                  ),
                  Text('Yesterday , 13:12'),
                ],
              ),
              trailing: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(
                    Icons.call,
                    color: Onboarolors.blue,
                  )),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/chat 10.jpg'),
                minRadius: 30,
                maxRadius: 30,
              ),
              title: Text(
                'Komila',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          color: Onboarolors.red,
                          borderRadius: BorderRadius.circular(4)),
                      child: Icon(
                        Icons.cancel_rounded,
                        size: 9,
                        color: Onboarolors.black,
                      )),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Missed(1)',
                    style: TextStyle(fontSize: 13),
                  ),
                  Container(
                    height: 10.0,
                    width: 1.0,
                    color: Onboarolors.white,
                    margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                  ),
                  Text('Today , 12.20 '),
                ],
              ),
              trailing: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(
                    Icons.call,
                    color: Onboarolors.blue,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
