import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../pop_up_menu/starred_messages.dart';
import 'group_participents.dart';
import 'group_settings.dart';

class GroupInfo extends StatefulWidget {
  const GroupInfo({Key? key}) : super(key: key);

  @override
  State<GroupInfo> createState() => _AboutPersonState();
}

class _AboutPersonState extends State<GroupInfo> {
  bool status1 = true;
  bool status2 = false;
  bool status3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Onboarolors.blue,
        title: Row(
          children: [

          ],
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.call),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.video_call),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.more_horiz),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: CircleAvatar(
                      maxRadius: 80,
                      backgroundColor: Colors.transparent,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/group2.jpg',
                          height: 130,
                          width: 130,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GroupParticipents()),
                  );
                },
                child: Text(
                  "Tiktokers Assemble",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Onboarolors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "+Group| 45 Particepents",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Onboarolors.white,
                  fontSize: 13),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30.0,
                right: 30,
              ),
              child: Container(
                height: 1,
                color: Onboarolors.halkegrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add Group Description.....',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Created By Williamson, December 14, 2024'),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: ListTile(
                    horizontalTitleGap: -1,
                    leading: Icon(
                      Icons.wallpaper_outlined,
                      size: 30,
                    ),
                    title: Text(
                      'Media, Links, Documents',
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('648'),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        ),
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                horizontalTitleGap: -1,
                leading: Icon(
                  Icons.notifications_off,
                  size: 30,
                ),
                title: Text(
                  'Mute Notifications',
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FlutterSwitch(
                      width: 45.0,
                      height: 25.0,
                      valueFontSize: 25.0,
                      toggleSize: 15.0,
                      value: status3,
                      borderRadius: 30.0,
                      padding: 8.0,
                      activeColor: Onboarolors.blue,
                      // showOnOff: true,
                      onToggle: (val) {
                        setState(() {
                          status3 = val;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                  horizontalTitleGap: -1,
                  leading: Icon(
                    Icons.volume_down,
                    size: 30,
                  ),
                  title: Text(
                    'Custom Notifications',
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                horizontalTitleGap: -1,
                leading: Icon(
                  Icons.visibility_rounded,
                  size: 30,
                ),
                title: Text(
                  'Media Visibilty',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                  horizontalTitleGap: -1,
                  leading: Icon(
                    Icons.timelapse,
                    size: 30,
                  ),
                  title: Text(
                    'Disappearing Messages',
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('Off'),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                    ],
                  )),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GroupSettings()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: ListTile(
                  horizontalTitleGap: -1,
                  leading: Icon(
                    Icons.settings,
                    size: 30,
                  ),
                  title: Text(
                    'Group Settings',
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: ListTile(
                    horizontalTitleGap: -1,
                    leading: Icon(
                      Icons.group_add_outlined,
                      size: 30,
                    ),
                    title: Text(
                      'Group Participents',
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('9'),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        ),
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                horizontalTitleGap: -1,
                leading: Icon(
                  Icons.report,
                  size: 30,
                ),
                title: Text(
                  'Report Group',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                horizontalTitleGap: -1,
                leading: Icon(
                  Icons.exit_to_app,
                  size: 30,
                ),
                title: Text(
                  'Exit Group',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
