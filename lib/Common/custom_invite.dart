import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';
class CustomInvite extends StatelessWidget {
  CustomInvite({Key? key , required this.ImageSouce,
    required this.CallerName,
    required this.PhoneNumber , required this.continerColor, required this.textColor , required this.Invited}) : super(key: key);
  String ImageSouce;
  String CallerName;
  String PhoneNumber;
  Color continerColor;
  Color textColor;
  String Invited;


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
      trailing: Container(
        height: 35,
        width: 60,
        decoration: BoxDecoration(
          color: continerColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(child: Text(Invited , style: TextStyle(color: textColor, ),)),
      ),
    );
  }
}
