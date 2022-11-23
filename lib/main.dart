import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';
import 'package:provider/provider.dart';

import 'Common/custom_chat.dart';
import 'Common/custom_select_contacts.dart';
import 'Common/select_Contacts_templete.dart';
import 'Home/calls.dart';
import 'Home/chat.dart';
import 'Home/chat_test.dart';
import 'Home/main_chat.dart';
import 'Home/welcome.dart';
import 'Signup/fill_your_profile.dart';
import 'Signup/login_with_number.dart';
import 'Signup/on_boarding.dart';
import 'Signup/set_your_fingerprint.dart';
import 'Signup/signup_otp_number.dart';
import 'Signup/signuppage.dart';
import 'calls/select_contact_in_call.dart';
import 'chat/audio_call.dart';
import 'chat/video_call.dart';
import 'splash/splash_screen1.dart';
import 'theme_changer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
        create: (_) => ThemeChanger(),
        child: Builder(builder: (BuildContext context) {
          final themeChanger = Provider.of<ThemeChanger>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            home: LoginNumber(),
            themeMode: themeChanger.themeMode,
            theme: ThemeData(
                brightness: Brightness.light,
                primarySwatch: Colors.teal,
                textTheme: const TextTheme(
                  headline3: TextStyle(
                      fontFamily: 'Bold', fontSize: 20.0, color: Colors.black),
                  headline4: TextStyle(
                      fontFamily: 'Bold',
                      fontSize: 18.0,
                      color: Color(0xff25292B)),
                  headline5: TextStyle(
                      fontFamily: 'Bold',
                      fontSize: 16.0,
                      color: Color(0xff25292B)),
                  headline6: TextStyle(
                      fontFamily: 'Bold',
                      fontSize: 14.0,
                      color: Color(0xff25292B)),
                  bodyText1: TextStyle(
                      fontFamily: 'Regular',
                      fontSize: 13.0,
                      color: Color(0xff25292B)),
                  bodyText2: TextStyle(
                      fontFamily: 'Regular',
                      fontSize: 13.0,
                      color: Color(0xff25292B)),
                ),
                cardColor: Colors.white,
                focusColor: Onboarolors.white,
                iconTheme: IconThemeData(color: Onboarolors.blue),
                // indicatorColor: Onboarolors.black
            ),

            darkTheme: ThemeData(
              brightness: Brightness.dark,
              textTheme: const TextTheme(
                headline3: TextStyle(
                    fontFamily: 'Bold', fontSize: 20.0, color: Colors.white),
                headline4: TextStyle(
                    fontFamily: 'Bold', fontSize: 18.0, color: Colors.white),
                headline5: TextStyle(
                    fontFamily: 'Bold', fontSize: 16.0, color: Colors.white),
                headline6: TextStyle(
                    fontFamily: 'Bold', fontSize: 14.0, color: Colors.white),
                bodyText1: TextStyle(
                    fontFamily: 'Regular', fontSize: 13.0, color: Colors.white),
                bodyText2: TextStyle(
                    fontFamily: 'Regular', fontSize: 13.0, color: Colors.white),
              ),
              // indicatorColor: Onboarolors.white,
              cardColor: Colors.black,
              iconTheme: IconThemeData(color: Colors.white),
              focusColor: Onboarolors.black,
            ),
          );
        }));
  }
}
