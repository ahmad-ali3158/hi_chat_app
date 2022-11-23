import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';
import 'package:pinput/pinput.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Home/welcome.dart';

class forget2 extends StatefulWidget {
  const forget2({Key? key}) : super(key: key);

  @override
  State<forget2> createState() => _forget2State();
}

class _forget2State extends State<forget2> {
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      color: Onboarolors.red,
      borderRadius: BorderRadius.circular(10),

    ),

  );

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
                            onPressed: ()
                            {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back,color: Colors.black,),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            child: Text(
                              'OTP Code Verification',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 250,
                  ),
                  Center(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Code has been sent to +111*****99',
                            style: TextStyle(
                                fontSize: 17,
                                // fontWeight: FontWeight.bold,
                                color: Onboarolors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Pinput(
                defaultPinTheme: defaultPinTheme,
                validator: (s) {
                  return s == '2222' ? null : 'Pin is incorrect';
                },
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                onCompleted: (pin) => print(pin),

              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Resend Code in',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Onboarolors.white),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    '53',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Onboarolors.blue),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    's',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Onboarolors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    border: Border.all(color: Colors.black12, width: 1),
                    color: Onboarolors.blue,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => Whatsapp()),
                          );
                        },
                        child: Text(
                          'Verify',
                          style: GoogleFonts.cabin(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Onboarolors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
