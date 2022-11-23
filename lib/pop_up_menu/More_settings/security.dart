import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Security extends StatefulWidget {
  const Security({Key? key}) : super(key: key);

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
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
              'Security',
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
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: ListTile(
              horizontalTitleGap: -1,
              title: Text(
                'Face ID',
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
              title: Text(
                'Biomatric ID',
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
                title: Text(
                  'Google Authenticator',
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
            padding: const EdgeInsets.only(left: 15.0, right: 15 , top: 5),
            child: Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                border: Border.all(color: Colors.black12, width: 1),
                color: Color(0xffE9F0FD),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Change PIN',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Onboarolors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
