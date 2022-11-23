import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';

class VideoCall extends StatelessWidget {
  const VideoCall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        // Image
        Image.asset(
          "assets/images/call_iamge.png",
          fit: BoxFit.cover,
        ),
        // Black Layer
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.3)),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15,top: 10),
                      child: GestureDetector(onTap: (){
                        Navigator.pop(context);
                      },
                          child: GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back,color: Onboarolors.black,size: 30,))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12,right: 17),
                      child: Icon(Icons.person_add_alt_rounded,color: Onboarolors.black,size: 32,),
                    ),

                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 420),
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
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
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
                            color: Colors.grey.shade800,
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
                            color: Colors.grey.shade800,
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
          ),
        ),
      ],
    );
  }
}
