import 'package:flutter/material.dart';

import 'onboarding_colors.dart';

class CustomChat extends StatelessWidget {
  CustomChat(
      {Key? key,
      required this.ImageSource,
      required this.CallerName,
      required this.Status,
      required this.ONTAP,
      required this.Timing,
      this.NumberOfChat,
      required this.isChat})
      : super(key: key);
  String ImageSource;
  String CallerName;
  String Status;
  VoidCallback ONTAP;
  String Timing;
  final NumberOfChat;
  bool isChat;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ONTAP,
      child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(ImageSource),
            minRadius: 30,
            maxRadius: 30,
          ),
          title: Text(
            CallerName,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children: [
              Text(
                Status,
                style: TextStyle(fontSize: 13),
              ),
            ],
          ),
          trailing: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              isChat
                  ? Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                          color: Onboarolors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        NumberOfChat,
                        style: TextStyle(color: Onboarolors.black),
                      )),
                    )
                  : Spacer(),
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  Timing,
                ),
              ),
            ],
          )),
    );
  }
}
