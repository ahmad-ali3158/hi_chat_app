import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/custom_status.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';

import '../bottom_sheet/bottom_sheat.dart';
import 'QR_Scanner.dart';

class LinkedDevices extends StatelessWidget {
  LinkedDevices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Onboarolors.blue,
        title: Row(
          children: [
            Text(
              'Linked Devices',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(Icons.more_horiz_rounded),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Center(
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/linked device image.png'),
                  minRadius: 100,
                  maxRadius: 100,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Use HiChat on Other Devices',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyHome()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: EdgeInsets.all(13),
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
                        'Link a Device',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Onboarolors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
              child: Container(
                height: 1,
                color: Onboarolors.halkegrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 20),
              child: Container(
                height: 40,
                width: double.infinity,
                child: Text(
                  'Tap a device to log out',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ),
            CustomStatus(
                ImageSouce: 'assets/images/chrome.jpg',
                CallerName: 'Google Chrome (Mac OS )',
                PhoneNumber: 'Last Activity Today at 16:40'),
            CustomStatus(
                ImageSouce: 'assets/images/firefox.jpg',
                CallerName: 'FireFox (Mac OS )',
                PhoneNumber: 'Last Activity Today at 16:40'),
            CustomStatus(
                ImageSouce: 'assets/images/mobile3.png',
                CallerName: 'Android Mobile ',
                PhoneNumber: 'Last Activity Today at 16:40'),
            CustomStatus(
                ImageSouce: 'assets/images/mbile tablet.png',
                CallerName: 'Mobile Tablet',
                PhoneNumber: 'Last Activity Today at 16:40'),
          ],
        ),
      ),
    );
  }
}
