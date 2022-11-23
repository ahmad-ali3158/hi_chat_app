import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ProfileSetting extends StatefulWidget {
  const ProfileSetting({Key? key}) : super(key: key);

  @override
  State<ProfileSetting> createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
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
      appBar: AppBar(
        backgroundColor: Onboarolors.blue,
        title: Row(
          children: [

            Text(
              'Settings',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Onboarolors.red,
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
                      // color: Onboarolors.halkawhite,
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
                      fillColor: Theme.of(context).cardColor,
                      filled: true,
                      hintText: "FulL Name",
                      contentPadding: EdgeInsets.only(left: 10),
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
                      // color: Onboarolors.halkawhite,
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
                      fillColor: Theme.of(context).cardColor,
                      filled: true,
                      hintText: "Nick Name",
                      contentPadding: EdgeInsets.only(left: 10),
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
                      // color: Onboarolors.halkawhite,
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
                      fillColor: Theme.of(context).cardColor,
                      filled: true,
                      hintText: "Date Of Birth",
                      suffixIcon: Icon(
                        Icons.calendar_month,
                        color: Theme.of(context).indicatorColor,
                      ),
                      contentPadding: EdgeInsets.only(left: 10 , top: 15 ),
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
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: IntlPhoneField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide:
                          BorderSide(width: 2, color: Onboarolors.greyboarder)),
                  // fillColor: Color(0xfff2eaea).withOpacity(0.3),
                  filled: true,
                  hintText: 'Phone Number',
                  contentPadding: EdgeInsets.only(left: 15),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    // color: Onboarolors.halkawhite,
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
                      fillColor: Theme.of(context).cardColor,
                      filled: true,
                      hintText: "Email",
                      suffixIcon: Icon(
                        Icons.email,
                        color: Theme.of(context).indicatorColor,
                        // color: Onboarolors.backgroundimage,
                      ),
                      contentPadding: EdgeInsets.only(left: 10, top: 15),
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
                    // color: Onboarolors.halkawhite,
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
                      fillColor: Theme.of(context).cardColor,
                      filled: true,
                      hintText: "About",
                      contentPadding: EdgeInsets.only(left: 10),
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
          ],
        ),
      ),
    );
  }
}
