import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Common/onboarding_colors.dart';
import 'package:google_fonts/google_fonts.dart';

import 'create_account.dart';
import 'login_with_number.dart';

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

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
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 80),
                height: 150,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(55)),
                child: Image(
                  image: AssetImage(
                    'assets/images/Purple Blue Illustration Group Chat Facebook Post  (1).png',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text("Let's you in",
                style: GoogleFonts.cabin(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Onboarolors.white)),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 1),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 70.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/icons8-facebook.svg",
                        width: 25,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Continue With Facebook',
                        style: GoogleFonts.cabin(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Onboarolors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 1),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 70.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/icons8-google.svg",
                        width: 25,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Continue With Google',
                        style: GoogleFonts.cabin(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Onboarolors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Onboarolors.greyboarder, width: 1),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 70.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/icons8-apple-logo.svg",
                        width: 25,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Continue With Apple',
                        style: GoogleFonts.cabin(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Onboarolors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  padding: EdgeInsets.only(left: 20, right: 9),
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: 1,
                  color: Onboarolors.greyboarder,
                ),
                SizedBox(
                  width: 5,
                ),
                Text('Or'),
                SizedBox(
                  width: 5,
                ),
                Container(
                  padding: EdgeInsets.only(left: 9, right: 20),
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: 1,
                  color: Onboarolors.greyboarder,
                ),
              ],
            ),
            SizedBox(
              height: 20,
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginNumber()),
                        );
                      },
                      child: Text(
                        'Sign In with Phone Number',
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
            SizedBox(
              height: 20,
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
                        MaterialPageRoute(builder: (context) => CreateAccount()),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Onboarolors.purpule,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
