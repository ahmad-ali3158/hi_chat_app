import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:google_fonts/google_fonts.dart';

import 'create_your_pin.dart';

class FillYourProfile extends StatefulWidget {
  const FillYourProfile({Key? key}) : super(key: key);

  @override
  State<FillYourProfile> createState() => _FillYourProfileState();
}

class _FillYourProfileState extends State<FillYourProfile> {
  File? _image;

  Future getimage(ImageSource source) async {
    final image = await ImagePicker.platform.getImage(source: source);
    if (image == null) return;

    CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: image.path,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9
      ],
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.deepOrange,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        IOSUiSettings(
          title: 'Cropper',
        ),
      ],
    );
    final imageTemporary = File(croppedFile!.path);
    setState(() {
      this._image = imageTemporary;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Onboarolors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                        'Fill Your Profile',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              alignment: Alignment.bottomRight,
              clipBehavior: Clip.none,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40),
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Onboarolors.halkawhite,
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(80),
                      child: _image != null
                          ? Image.file(
                              _image!,
                              height: 100,
                              width: 100,
                              fit: BoxFit.fill,
                            )
                          : Icon(
                              Icons.person,
                              size: 110,
                              color: Onboarolors.backgroundimage,
                            ),
                    ),
                  ),
                ),
                PopupMenuButton(
                  position: PopupMenuPosition.under,
                  itemBuilder: (Context) {
                    return [
                      PopupMenuItem(
                        child: TextButton(
                          onPressed: () => getimage(ImageSource.gallery),
                          child: Text("Choose from gallery"),
                        ),
                      ),
                      PopupMenuItem(
                        child: TextButton(
                          onPressed: () => getimage(ImageSource.camera),
                          child: Text("Camera"),
                        ),
                      ),
                      PopupMenuItem(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _image = null;
                              Navigator.pop(context);
                            });
                          },
                          child: Text("Remove"),
                        ),
                      ),
                    ];
                  },
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        color: Onboarolors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.edit,
                      size: 20,
                      color: Onboarolors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    // spreadRadius: 3,
                    // blurRadius: 7,
                    // offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                      hintText: "FulL Name",
                      labelStyle: TextStyle(color: Colors.black),
                      contentPadding: EdgeInsets.only(left: 5),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none),
                  validator: (value) {
                    if (value!.isNotEmpty && value.length > 2) {
                      return null;
                    } else if (value.length < 3 && value.isNotEmpty) {
                      return 'No way your name is that short';
                    } else {
                      return 'Please give your Name';
                    }
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    // spreadRadius: 3,
                    // blurRadius: 7,
                    // offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: "Nick Name",
                    labelStyle: TextStyle(color: Onboarolors.halkawhite),
                    contentPadding: EdgeInsets.only(left: 5),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value!.isNotEmpty && value.length > 2) {
                      return null;
                    } else if (value.length < 3 && value.isNotEmpty) {
                      return 'No way your name is that short';
                    } else {
                      return 'Please give your Name';
                    }
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    // spreadRadius: 3,
                    // blurRadius: 7,
                    // offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: "Data Of Birth",
                    labelStyle: TextStyle(color: Onboarolors.halkawhite),
                    contentPadding: EdgeInsets.only(left: 10, top: 15),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.calendar_month,
                      color: Theme.of(context).cardColor,
                    ),
                  ),
                  validator: (value) {
                    if (value!.isNotEmpty && value.length > 2) {
                      return null;
                    } else if (value.length < 3 && value.isNotEmpty) {
                      return 'No way your name is that short';
                    } else {
                      return 'Please give your Name';
                    }
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    // spreadRadius: 3,
                    // blurRadius: 7,
                    // offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: "Email",
                    labelStyle: TextStyle(color: Onboarolors.halkawhite),
                    contentPadding: EdgeInsets.only(left: 5, top: 15),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.email,
                      color: Theme.of(context).cardColor,
                    ),
                  ),
                  validator: (value) {
                    if (value!.isNotEmpty && value.length > 2) {
                      return null;
                    } else if (value.length < 3 && value.isNotEmpty) {
                      return 'No way your name is that short';
                    } else {
                      return 'Please give your Name';
                    }
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    // spreadRadius: 3,
                    // blurRadius: 7,
                    // offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                      hintText: "About",
                      labelStyle: TextStyle(color: Colors.black),
                      contentPadding: EdgeInsets.only(left: 5),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none),
                  validator: (value) {
                    if (value!.isNotEmpty && value.length > 2) {
                      return null;
                    } else if (value.length < 3 && value.isNotEmpty) {
                      return 'No way your name is that short';
                    } else {
                      return 'Please give your Name';
                    }
                  },
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreatePin()),
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
                        'Continue',
                        style: GoogleFonts.cabin(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
