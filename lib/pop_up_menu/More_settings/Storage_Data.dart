import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Storage extends StatefulWidget {
  const Storage({Key? key}) : super(key: key);

  @override
  State<Storage> createState() => _StorageState();
}

class _StorageState extends State<Storage> {
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
              'Data & Storage',
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
                  Icons.save_outlined,
                  size: 25,
                ),
                title: Text(
                  'Manage Storage',
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
                leading: Icon(
                  Icons.network_cell_outlined,
                  size: 25,
                ),
                title: Text(
                  'Network Usage',
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
              leading: Icon(
                Icons.call_outlined,
                size: 25,
              ),
              title: Text(
                'Use Less Data for Calls',
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
                'Media Auto Download',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: ListTile(
                horizontalTitleGap: -1,
                title: Text(
                  'When Using Mobile Data',
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('Photos'),
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
                  'When Connected on Wi-fi',
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('All Media'),
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
                  'When Roaming',
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('No Meida'),
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
                'Media Upload Quality',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: ListTile(
                horizontalTitleGap: -1,
                title: Text(
                  'Photo Upload Quality',
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('Auto'),
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
                  'Video Upload Quality',
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('Auto'),
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
                  'Document Upload Quality',
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('Data Saver'),
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
    );
  }
}
