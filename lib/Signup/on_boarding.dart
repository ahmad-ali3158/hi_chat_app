import 'package:flutter/material.dart';

import '../Common/onboarding_colors.dart';
import 'on_boardingcontent.dart';
import 'signuppage.dart';

class Onbording extends StatefulWidget {
  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  PageController _controller = PageController();

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage(contents[i].image),
                        height: 370,
                      ),
                      Text(
                        contents[i].title,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Onboarolors.blue),
                      ),
                      SizedBox(height: 20),
                      Text(
                        contents[i].discription,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          // Container(
          //   height: 60,
          //   margin: EdgeInsets.all(40),
          //
          //   width: double.infinity,
          //   child: FlatButton(
          //     child: Text(
          //         currentIndex == contents.length - 1 ? "Continue" : "Next"),
          //     onPressed: () {
          //       if (currentIndex == contents.length - 1) {
          //         Navigator.pushReplacement(
          //           context,
          //           MaterialPageRoute(
          //             builder: (_) => signup(),
          //           ),
          //         );
          //       }
          //       _controller.nextPage(
          //         duration: Duration(milliseconds: 100),
          //         curve: Curves.bounceIn,
          //       );
          //     },
          //     color: Onboarolors.blue,
          //     textColor: Colors.white,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(20),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Onboarolors.blue,
      ),
    );
  }
}
