import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';
import 'package:flutter_switch/flutter_switch.dart';

class ChatSettings extends StatefulWidget {
  const ChatSettings({Key? key}) : super(key: key);

  @override
  State<ChatSettings> createState() => _ChatSettingsState();
}

class _ChatSettingsState extends State<ChatSettings> {
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
              'Chat',
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
                Icons.wallpaper_outlined,
                size: 30,
              ),
              title: Text(
                'Wallpaper',
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 5),
            child: Container(
              height: 1,
              color: Onboarolors.halkegrey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20),
            child: Container(
              height: 40,
              width: double.infinity,
              child: Text(
                'Chat Settings',
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: ListTile(
              horizontalTitleGap: -1,
              leading: Icon(
                Icons.pin_drop_outlined,
                size: 30,
              ),
              title: Text(
                'Enter Is Send',
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
                Icons.visibility_rounded,
                size: 30,
              ),
              title: Text(
                'Media Visability',
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
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: ListTile(
                horizontalTitleGap: -1,
                leading: Icon(
                  Icons.font_download_outlined,
                  size: 30,
                ),
                title: Text(
                  'Font Size',
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('Mediam'),
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
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 5),
            child: Container(
              height: 1,
              color: Onboarolors.halkegrey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20),
            child: Container(
              height: 40,
              width: double.infinity,
              child: Text(
                'Archived Chats',
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: ListTile(
              horizontalTitleGap: -1,
              leading: Icon(
                Icons.archive_outlined,
                size: 30,
              ),
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
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 5),
            child: Container(
              height: 1,
              color: Onboarolors.halkegrey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: ListTile(
              horizontalTitleGap: -1,
              leading: Icon(
                Icons.save_outlined,
                size: 30,
              ),
              title: Text(
                'Chat Backup',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: ListTile(
              horizontalTitleGap: -1,
              leading: Icon(
                Icons.history,
                size: 30,
              ),
              title: Text(
                'Chat History',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
