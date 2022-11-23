import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';

class MeidaChatHistory extends StatelessWidget {
  const MeidaChatHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 20),
              child: Container(
                height: 40,
                width: double.infinity,
                child: Text(
                  'Recent',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 420),
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Onboarolors.halkawhite,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('assets/images/chat 2.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 420),
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Onboarolors.halkawhite,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('assets/images/chat1.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 420),
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Onboarolors.halkawhite,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('assets/images/chat 4.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 420),
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Onboarolors.halkawhite,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('assets/images/chat 5.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 20),
              child: Container(
                height: 40,
                width: double.infinity,
                child: Text(
                  'This Week',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 420),
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Onboarolors.halkawhite,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('assets/images/chat 7.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 420),
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Onboarolors.halkawhite,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('assets/images/chat 8.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 420),
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Onboarolors.halkawhite,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('assets/images/chat 9.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 420),
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Onboarolors.halkawhite,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('assets/images/chat 11.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 20),
              child: Container(
                height: 40,
                width: double.infinity,
                child: Text(
                  'Last Month',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 420),
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Onboarolors.halkawhite,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('assets/images/chat 2.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 420),
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Onboarolors.halkawhite,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('assets/images/chat1.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 420),
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Onboarolors.halkawhite,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('assets/images/chat 4.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 420),
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Onboarolors.halkawhite,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('assets/images/chat 5.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),



          ],
        ),
      ),
    );
  }
}
