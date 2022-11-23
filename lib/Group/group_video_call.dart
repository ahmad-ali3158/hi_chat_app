import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';

class GroupVideo extends StatelessWidget {
  const GroupVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 250,
                          width: 180,
                          decoration: BoxDecoration(
                              color: Onboarolors.halkawhite,
                              shape: BoxShape.rectangle,
                              // borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/chat 2.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: 250,
                          width: 180,
                          decoration: BoxDecoration(
                              color: Onboarolors.halkawhite,
                              shape: BoxShape.rectangle,
                              // borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/chat 4.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 250,
                          width: 180,
                          decoration: BoxDecoration(
                              color: Onboarolors.halkawhite,
                              shape: BoxShape.rectangle,
                              // borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/chat1.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: 250,
                          width: 180,
                          decoration: BoxDecoration(
                              color: Onboarolors.halkawhite,
                              shape: BoxShape.rectangle,
                              // borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/chat 7.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 256,
                          width: 180,
                          decoration: BoxDecoration(
                              color: Onboarolors.halkawhite,
                              shape: BoxShape.rectangle,
                              // borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/chat 5.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: 256,
                          width: 180,
                          decoration: BoxDecoration(
                              color: Onboarolors.halkawhite,
                              shape: BoxShape.rectangle,
                              // borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/chat 6.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 30),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Onboarolors.black,
                          size: 30,
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 17),
                child: Icon(
                  Icons.person_add_alt_rounded,
                  color: Onboarolors.black,
                  size: 32,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 650.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(27)),
                  child: Icon(
                    Icons.volume_down,
                    color: Onboarolors.black,
                    size: 35,
                  ),
                ),
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(27)),
                  child: Icon(
                    Icons.mic,
                    color: Onboarolors.black,
                    size: 35,
                  ),
                ),
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      color: Onboarolors.red,
                      borderRadius: BorderRadius.circular(27)),
                  child: Icon(
                    Icons.call_end,
                    color: Onboarolors.black,
                    size: 35,
                  ),
                ),
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(27)),
                  child: Icon(
                    Icons.video_call,
                    color: Onboarolors.black,
                    size: 35,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
