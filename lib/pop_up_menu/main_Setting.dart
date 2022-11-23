import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../Signup/create_account.dart';
import '../Signup/signuppage.dart';
import 'More_settings/Storage_Data.dart';
import 'More_settings/account.dart';
import 'More_settings/chat_settings.dart';
import 'More_settings/dark_theme.dart';
import 'More_settings/help_center.dart';
import 'More_settings/invite_friends.dart';
import 'More_settings/language.dart';
import 'More_settings/security.dart';
import 'Profile_Setting.dart';
import 'More_settings/notifications.dart';

class MainSetting extends StatefulWidget {
  const MainSetting({Key? key}) : super(key: key);

  @override
  State<MainSetting> createState() => _MainSettingState();
}

class _MainSettingState extends State<MainSetting> {
  bool status1 = true;
  bool status2 = false;
  bool status3 = true;
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
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  clipBehavior: Clip.none,
                  children: [
                    PopupMenuButton(
                      child: Container(
                        margin: EdgeInsets.only(top: 20, left: 30),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Onboarolors.halkawhite,
                          shape: BoxShape.circle,
                        ),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(30),
                            child: _image != null
                                ? Image.file(
                                    _image!,
                                    height: 100,
                                    width: 100,
                                    fit: BoxFit.fill,
                                  )
                                : Icon(
                                    Icons.person,
                                    size: 50,
                                    color: Onboarolors.backgroundimage,
                                  ),
                          ),
                        ),
                      ),
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
                      // child: Container(
                      //   height: 20,
                      //   width: 20,
                      //   decoration: BoxDecoration(
                      //       color: Onboarolors.blue,
                      //       borderRadius: BorderRadius.circular(10)),
                      //   child: Icon(
                      //     Icons.edit,
                      //     size: 8,
                      //     color: Onboarolors.black,
                      //   ),
                      // ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfileSetting()),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Andrew Ainsley',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Always Avialable : ) ',
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, top: 20),
                  child: Icon(
                    Icons.qr_code_scanner_outlined,
                    color: Onboarolors.blue,
                    size: 25,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18, top: 15),
              child: Container(
                height: 1,
                decoration: BoxDecoration(color: Onboarolors.halkegrey),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Account()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: ListTile(
                  horizontalTitleGap: -1,
                  leading: Icon(
                    Icons.person_outlined,
                    size: 30,
                  ),
                  title: Text(
                    'Account',
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatSettings()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: ListTile(
                  horizontalTitleGap: -1,
                  leading: Icon(
                    Icons.chat_outlined,
                    size: 30,
                  ),
                  title: Text(
                    'Chats',
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Notifications()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: ListTile(
                  horizontalTitleGap: -1,
                  leading: Icon(
                    Icons.notifications_outlined,
                    size: 30,
                  ),
                  title: Text(
                    'Notifications',
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Storage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: ListTile(
                  horizontalTitleGap: -1,
                  leading: Icon(
                    Icons.sd_card_outlined,
                    size: 30,
                  ),
                  title: Text(
                    'Storage & Data',
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Security()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: ListTile(
                  horizontalTitleGap: -1,
                  leading: Icon(
                    Icons.security_outlined,
                    size: 30,
                  ),
                  title: Text(
                    'Security',
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Language()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: ListTile(
                    horizontalTitleGap: -1,
                    leading: Icon(
                      Icons.language_outlined,
                      size: 30,
                    ),
                    title: Text(
                      'Language',
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('English(US)'),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        ),
                      ],
                    )),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingScreen()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: ListTile(
                  horizontalTitleGap: -1,
                  leading: Icon(
                    Icons.dark_mode_outlined,
                    size: 30,
                  ),
                  title: Text(
                    'Dark Mode',
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelpCenter()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: ListTile(
                  horizontalTitleGap: -1,
                  leading: Icon(
                    Icons.help_center_outlined,
                    size: 30,
                  ),
                  title: Text(
                    'Help Center',
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InviteFriends()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: ListTile(
                  horizontalTitleGap: -1,
                  leading: Icon(
                    Icons.group_outlined,
                    size: 30,
                  ),
                  title: Text(
                    'Invite Friends',
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateAccount()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: ListTile(
                  horizontalTitleGap: -1,
                  leading: Icon(
                    Icons.logout_outlined,
                    size: 30,
                    color: Onboarolors.red,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(color: Onboarolors.red),
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
