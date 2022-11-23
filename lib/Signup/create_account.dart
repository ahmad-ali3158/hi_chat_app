import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'login_with_number.dart';
import 'signup_otp_number.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _LoginNumberState();
}

class _LoginNumberState extends State<CreateAccount> {
  int groupValue = 0;
  bool firstValue = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // backgroundColor: Onboarolors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: IconButton(
                onPressed: ()
                {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back,color: Colors.black,),
              ),

            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 120),
                height: 110,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(55)),
                child: Image(
                  image: AssetImage(
                    'assets/images/emoji (2).png',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text("Create New Account",
                style: GoogleFonts.cabin(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Onboarolors.white)),
            SizedBox(
              height: 80,
            ),
            Container(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: IntlPhoneField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(
                            width: 2, color: Onboarolors.greyboarder)),
                    fillColor: Color(0xfff2eaea).withOpacity(0.3),
                    filled: true,
                    hintText: 'Phone Number',
                    contentPadding: EdgeInsets.only(left: 15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  side: BorderSide(color: Onboarolors.blue, width: 3),
                  value: firstValue,
                  checkColor: Colors.white,
                  activeColor: Onboarolors.purpule,
                  splashRadius: 8,
                  onChanged: (val) {
                    setState(() {
                      firstValue = val!;
                    });
                  },
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Remember Me',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => forget1()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    border: Border.all(color: Colors.black12, width: 1),
                    color: Onboarolors.purpule,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign Up',
                        style: GoogleFonts.cabin(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Onboarolors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Onboarolors.greyboarder),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginNumber()),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Onboarolors.purpule,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
