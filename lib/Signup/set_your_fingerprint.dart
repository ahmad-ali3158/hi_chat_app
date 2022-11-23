import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Home/welcome.dart';

class setyourfinger extends StatefulWidget {
  const setyourfinger({Key? key}) : super(key: key);

  @override
  State<setyourfinger> createState() => _setyourfingerState();
}

class _setyourfingerState extends State<setyourfinger> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Onboarolors.black,
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 60.0, left: 20),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Text(
                              'Set You Fingerprint',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              textAlign: TextAlign.center,
                              'Add a Fingerprint to make your account more secure',
                              style: TextStyle(
                                fontSize: 17,
                                // fontWeight: FontWeight.bold,
                            color: Onboarolors.white
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  Container(
                    child: Icon(
                      Icons.fingerprint_outlined,
                      size: 200,
                      color: Onboarolors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18),
                    child: Text(
                      textAlign: TextAlign.center,
                      'Please put your finger on the finger print scanner to get started',
                      style: TextStyle(
                        fontSize: 17,
                        // fontWeight: FontWeight.bold,
                          color: Onboarolors.white
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        border: Border.all(color: Colors.black12, width: 1),
                        color: Onboarolors.blue,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Skip',
                            style: GoogleFonts.cabin(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                                color: Onboarolors.black
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Container(
                  //     height: 45,
                  //     width: MediaQuery.of(context).size.width * 0.4,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(23),
                  //       border: Border.all(color: Colors.black12, width: 1),
                  //       color: Onboarolors.blue,
                  //     ),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         TextButton(
                  //           onPressed: () {
                  //             {
                  //               Signup(context);
                  //             }
                  //             if (!_formKey.currentState!.validate())
                  //               Scaffold.of(context).showSnackBar(
                  //                 SnackBar(
                  //                   content: Text('Got your name '),
                  //                 ),
                  //               );
                  //           },
                  //           child: GestureDetector(
                  //             onTap: () {
                  //               Navigator.push(
                  //                 context,
                  //                 MaterialPageRoute(
                  //                     builder: (context) => Home()),
                  //               );
                  //             },
                  //             child: Text(
                  //               'Continue',
                  //               style: GoogleFonts.cabin(
                  //                 fontSize: 18,
                  //                 fontWeight: FontWeight.bold,
                  //                 color: Onboarolors.black
                  //                 ,
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ]),
      ),
    );
  }
}

void Signup(BuildContext context) {
  Timer(Duration(seconds: 3), () {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Home()));
  });
  var alertDialog = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    content: SingleChildScrollView(
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Image(
                image: AssetImage('assets/images/ALERT__BOX.png'),
                height: 130,
                width: 200,
              ),
            )),
            Text(
              'Congratulations!',
              style: TextStyle(
                  color: Onboarolors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              textAlign: TextAlign.center,
              'Your account is ready to use. Please wait a minute',
              style: TextStyle(color: Onboarolors.white),
            ),
            // SizedBox(height: 10,),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Image(
                image: AssetImage('assets/images/LOADER.png'),
                height: 100,
                width: 180,
              ),
            )),
          ],
        ),
      ),
    ),
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
