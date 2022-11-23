import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';

class AudioCall extends StatelessWidget {
  const AudioCall({Key? key}) : super(key: key);

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
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 80.0),
                      child: CircleAvatar(
                        maxRadius: 80,
                        backgroundColor: Colors.transparent,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/call_iamge.png',
                            height: 130,
                            width: 130,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Text(
                    "Jenny Wilson",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Onboarolors.black,
                        fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "05: 46 minutes",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Onboarolors.black,
                      fontSize: 15),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 250.0),
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
