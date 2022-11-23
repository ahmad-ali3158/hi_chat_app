import 'package:flutter/material.dart';

import 'onboarding_colors.dart';

class CustomSelectContacts extends StatelessWidget {
  CustomSelectContacts(
      {Key? key,
      required this.ImageSource,
      required this.CallerName,
      required this.CallerNumber,
      required this.CallIcon1,
      required this.VideoCallIcon})
      : super(key: key);

  String ImageSource;
  String CallerName;
  String CallerNumber;
  IconData CallIcon1;
  IconData VideoCallIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: ListTile(

              leading: CircleAvatar(
                backgroundImage: AssetImage(ImageSource),
                minRadius: 25,
                maxRadius: 25,
              ),
              title: Text(
                CallerName,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(CallerNumber),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    CallIcon1,
                    color: Onboarolors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    VideoCallIcon,
                    color: Onboarolors.blue,
                  ),
                ],
              )
          ),
        ),
      ],

    );
  }
}
