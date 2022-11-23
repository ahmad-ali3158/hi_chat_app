import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';
import '../Common/custom_chat.dart';
import '../Group/group_chat.dart';
import '../chat/new_chat_screeen.dart';
import '../pop_up_menu/New_Group.dart';
import '../Status/status_main.dart';
import '../calls/main_calls.dart';
import '../pop_up_menu/linked_devices.dart';
import '../pop_up_menu/main_Setting.dart';
import '../pop_up_menu/new_broadcast.dart';
import '../pop_up_menu/starred_messages.dart';
import 'chat.dart';
import 'main_chat.dart';

class Whatsapp extends StatelessWidget {
  const Whatsapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(120),
            child: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Onboarolors.blue,
              title: Row(
                children: [
                  Image(
                    image: AssetImage('assets/images/Untitled design (1).png'),
                    width: 50,
                  ),
                  Text(
                    'HiChat',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    showSearch(context: context, delegate: MydelegateSearch());
                  },
                ),
                PopupMenuButton<String>(itemBuilder: (BuildContext) {
                  return [
                    PopupMenuItem(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => NewGroup()),
                          );
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.group,
                              color: Onboarolors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('New Group'),
                          ],
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewBroadCast()),
                          );
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.mic,
                              color: Onboarolors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('New Broadcast'),
                          ],
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LinkedDevices()),
                          );
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.not_started,
                              color: Onboarolors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Linked Devices'),
                          ],
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StarredMessags()),
                          );
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Onboarolors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Stared Messages'),
                          ],
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainSetting()),
                          );
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.settings,
                              color: Onboarolors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Settings'),
                          ],
                        ),
                      ),
                    ),
                  ];
                }),
              ],
              bottom: TabBar(tabs: [
                Tab(
                  text: 'Chats',
                ),
                Tab(
                  text: 'Status',
                ),
                Tab(
                  text: 'Calls',
                ),
              ]),
            ),
          ),
          body: TabBarView(
            children: [
              chat(),
              StatusMain(),
              MainCall(),
            ],
          ),
        ),
      ),
    );
  }
}

class MydelegateSearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = " ";
            }
          },
          icon: Icon(Icons.clear),
        ),
      ];

  @override
  Widget? buildLeading(BuildContext context) {}

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  late VoidCallback onTap;

  @override
  Widget buildSuggestions(BuildContext context) {
    List suggestions = [
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
    ];
    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          final suggestion = suggestions[index];

          return Container(
            child: suggestion,
          );
        });
  }
}
