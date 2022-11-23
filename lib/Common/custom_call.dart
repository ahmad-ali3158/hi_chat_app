import 'package:flutter/material.dart';

import 'onboarding_colors.dart';

class CustomCall extends StatelessWidget {
  CustomCall(
      {Key? key,
      required this.ImageSource,
      required this.CallerName,
      required this.BoxColor,
      required this.CustomIcon,
      required this.Status,
      required this.Timing,
      required this.CallICon1 ,
      required this.ONTAP})
      : super(key: key);
  String ImageSource;
  String CallerName;
  Color BoxColor;
  IconData CustomIcon;
  String Status;
  String Timing;
  IconData CallICon1;
  VoidCallback ONTAP;

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
            Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                    color: BoxColor,
                    borderRadius: BorderRadius.circular(4)),
                child: Icon(
                  CustomIcon,
                  size: 9,
                  color: Onboarolors.black,
                )),
            SizedBox(
              width: 2,
            ),
            Text(
              Status,
              style: TextStyle(fontSize: 13),
            ),
            Container(
              height: 10.0,
              width: 1.0,
              color: Onboarolors.white,
              margin: const EdgeInsets.only(left: 5.0, right: 5.0),
            ),
            Text(Timing),
          ],
        ),
        trailing: Container(
            padding: EdgeInsets.only(top: 10),
            child: Icon(
              CallICon1,
              color: Onboarolors.blue,
            )),


      ),
    );
  }
}
