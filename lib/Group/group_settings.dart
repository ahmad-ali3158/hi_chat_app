import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';

class GroupSettings extends StatelessWidget {
  const GroupSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Onboarolors.blue,
        title: Row(
          children: [

            Text(
              'Group Settings',
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
                  Icons.pin_drop,
                  size: 30,
                ),
                title: Text(
                  'Edit Group Info',
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('EveryOne'),
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
                leading: Icon(
                  Icons.message_sharp,
                  size: 30,
                ),
                title: Text(
                  'Send Messages',
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('EveryOne'),
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
                leading: Icon(
                  Icons.group,
                  size: 30,
                ),
                title: Text(
                  'Edit Admin',
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
          )
        ],
      ),
    );
  }
}
