import 'package:flutter/material.dart';

class BulkPics extends StatelessWidget {
   BulkPics({Key? key  , required this.PicOne, required this.PicTwo, required this.PicThree, required this.PicFour}) : super(key: key);
  String PicOne;
  String PicTwo;
  String PicThree;
  String PicFour;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 15),
          child: CircleAvatar(
            backgroundImage: AssetImage(PicOne),
            minRadius: 35,
            maxRadius: 35,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 15),
          child: CircleAvatar(
            backgroundImage: AssetImage(PicTwo),
            minRadius: 35,
            maxRadius: 35,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 15),
          child: CircleAvatar(
            backgroundImage: AssetImage(PicThree),
            minRadius: 35,
            maxRadius: 35,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 15),
          child: CircleAvatar(
            backgroundImage: AssetImage(PicFour),
            minRadius: 35,
            maxRadius: 35,
          ),
        ),
      ],
      );


  }
}
