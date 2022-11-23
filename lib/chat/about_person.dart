import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../pop_up_menu/starred_messages.dart';
import 'groups_in_common.dart';
import 'media_visibility.dart';

class AboutPerson extends StatefulWidget {
  const AboutPerson({Key? key}) : super(key: key);

  @override
  State<AboutPerson> createState() => _AboutPersonState();
}

class _AboutPersonState extends State<AboutPerson> {
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
                          'assets/images/call_iamge.png',
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
              child: Text(
                "Jenny Wilson",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Onboarolors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "+1-635-373-3773",
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
              padding: const EdgeInsets.only(right: 100.0, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Always available, just contact me',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('December 14, 2024'),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MediaVisibity()));
              },
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
            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StarredMessags()));

              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: ListTile(
                    horizontalTitleGap: -1,
                    leading: Icon(
                      Icons.star,
                      size: 30,
                    ),
                    title: Text(
                      'Stared Messages',
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
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GroupInCommon()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: ListTile(
                    horizontalTitleGap: -1,
                    leading: Icon(
                      Icons.group_add_outlined,
                      size: 30,
                    ),
                    title: Text(
                      'Group in Commons',
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
                  'Report Jenny Wilson',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                horizontalTitleGap: -1,
                leading: Icon(
                  Icons.block,
                  size: 30,
                ),
                title: Text(
                  'Block Jenny Wilson',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
