import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/custom_chat.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';

import '../Group/group_chat.dart';
import '../chat/archived_chat.dart';
import '../chat/new_chat_screeen.dart';
import 'main_chat.dart';
import 'select_contacts.dart';

class chat extends StatelessWidget {
  const chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.chat),
          backgroundColor: Onboarolors.blue,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => selectcontact()));
          }),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ArchiveChat()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: ListTile(
                  leading: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Onboarolors.blue,
                        borderRadius: BorderRadius.circular(15)),
                    child: Icon(
                      Icons.archive,
                      color: Onboarolors.black,
                    ),
                  ),
                  title: Text(
                    'Archived',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Container(
                    height: 20,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Onboarolors.blue,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                        child: Text(
                      '278',
                      style: TextStyle(fontSize: 10, color: Onboarolors.black),
                    )),
                  ),
                ),
              ),
            ),
            CustomChat(
              ImageSource: 'assets/images/chat 11.jpg',
              CallerName: 'Denny Moreson',
              Status: 'Proud Of you Brother',
              ONTAP: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => mainchat()),
                );
              },
              Timing: '10:20 ',
              NumberOfChat: '6',
              isChat: true,
            ),
            CustomChat(
              ImageSource: 'assets/images/chat1.jpg',
              CallerName: 'Kumail Zenzebar',
              Status: 'Kihdar ha bhai!',
              ONTAP: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChatScreen(
                            image: 'assets/images/chat 2.jpg',
                            name: 'Ali',
                          )),
                );
              },
              Timing: '01:58 ',
              NumberOfChat: '1',
              isChat: true,
            ),
            CustomChat(
              ImageSource: 'assets/images/bajwa lobe.jpg',
              CallerName: 'Qamar Javeed Bajwa',
              Status: 'Long Live Bajwa',
              ONTAP: () {},
              Timing: '05:47 ',
              NumberOfChat: '1',
              isChat: false,
            ),
            CustomChat(
              ImageSource: 'assets/images/group6.jpg',
              CallerName: 'Tiktokers Assemble',
              Status: 'Aj Plan Banate hn milne ka',
              ONTAP: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GroupChat(
                            name: 'Tiktokers',
                            image: 'assets/images/grup3.jpeg',
                          )),
                );
              },
              Timing: '05:47 ',
              NumberOfChat: '1',
              isChat: false,
            ),
            CustomChat(
              ImageSource: 'assets/images/chat 3.jpg',
              CallerName: 'Alex Hales',
              Status: 'Hy Whats up bro',
              ONTAP: () {},
              Timing: '09:18 ',
              NumberOfChat: '8',
              isChat: true,
            ),
            CustomChat(
              ImageSource: 'assets/images/chat 4.jpg',
              CallerName: 'Joe Denly',
              Status: 'Kahan ha bhai?',
              ONTAP: () {},
              Timing: '03:18 ',
              NumberOfChat: '1',
              isChat: false,
            ),
            CustomChat(
              ImageSource: 'assets/images/chat 5.jpg',
              CallerName: 'Henna Backer',
              Status: 'Kiya ho raha ha',
              ONTAP: () {},
              Timing: '03:18 ',
              NumberOfChat: '3',
              isChat: true,
            ),
            CustomChat(
              ImageSource: 'assets/images/chat 9.jpg',
              CallerName: 'Alester Cook',
              Status: 'Coming to the ground?',
              ONTAP: () {},
              Timing: '03:18 ',
              NumberOfChat: '1',
              isChat: false,
            ),
            CustomChat(
              ImageSource: 'assets/images/chat 4.jpg',
              CallerName: 'Andreson',
              Status: 'Bolwed out for 7',
              ONTAP: () {},
              Timing: '03:18 ',
              NumberOfChat: '1',
              isChat: false,
            ),
            CustomChat(
              ImageSource: 'assets/images/chat 7.jpg',
              CallerName: 'Komila Khan',
              Status: 'Hn kiya krna?',
              ONTAP: () {},
              Timing: '03:18 ',
              NumberOfChat: '1',
              isChat: false,
            ),
          ],
        ),
      ),
    );
  }
}
