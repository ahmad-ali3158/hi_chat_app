import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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

            Text(
              'Notifications',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                horizontalTitleGap: -1,
                title: Text(
                  'Keep Chat Archived',
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FlutterSwitch(
                      width: 45.0,
                      height: 25.0,
                      valueFontSize: 25.0,
                      toggleSize: 15.0,
                      value: status2,
                      borderRadius: 30.0,
                      padding: 8.0,
                      activeColor: Onboarolors.blue,
                      // showOnOff: true,
                      onToggle: (val) {
                        setState(() {
                          status2 = val;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20,
              ),
              child: Container(
                height: 1,
                color: Onboarolors.halkegrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                horizontalTitleGap: -1,
                title: Text(
                  'Messages',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                  horizontalTitleGap: -1,
                  title: Text(
                    'Notifications Tones',
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('Default'),
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
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                  horizontalTitleGap: -1,
                  title: Text(
                    'Vibrate',
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('Long'),
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
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                horizontalTitleGap: -1,
                title: Text(
                  'Reaction Notifications',
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FlutterSwitch(
                      width: 45.0,
                      height: 25.0,
                      valueFontSize: 25.0,
                      toggleSize: 15.0,
                      value: status1,
                      borderRadius: 30.0,
                      padding: 8.0,
                      activeColor: Onboarolors.blue,
                      // showOnOff: true,
                      onToggle: (val) {
                        setState(() {
                          status1 = val;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20,
              ),
              child: Container(
                height: 1,
                color: Onboarolors.halkegrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                horizontalTitleGap: -1,
                title: Text(
                  'Groups',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                  horizontalTitleGap: -1,
                  title: Text(
                    'Notifications Tones',
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('Default'),
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
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                  horizontalTitleGap: -1,
                  title: Text(
                    'Vibrate',
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
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                horizontalTitleGap: -1,
                title: Text(
                  'Reaction Notifications',
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
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20,
              ),
              child: Container(
                height: 1,
                color: Onboarolors.halkegrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                horizontalTitleGap: -1,
                title: Text(
                  'Calls',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                  horizontalTitleGap: -1,
                  title: Text(
                    'Notifications Tones',
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('Default'),
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
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                  horizontalTitleGap: -1,
                  title: Text(
                    'Vibrate',
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('Short'),
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

          ],
        ),
      ),
    );
  }
}
