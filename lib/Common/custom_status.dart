import 'package:flutter/material.dart';

class CustomStatus extends StatelessWidget {
  CustomStatus(
      {Key? key,
      required this.ImageSouce,
      required this.CallerName,
      required this.PhoneNumber})
      : super(key: key);
  String ImageSouce;
  String CallerName;
  String PhoneNumber;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(ImageSouce),
        minRadius: 25,
        maxRadius: 25,
      ),
      title: Text(
        CallerName,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        PhoneNumber,
      ),
    );
  }
}
