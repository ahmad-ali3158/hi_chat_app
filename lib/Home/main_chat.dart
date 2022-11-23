import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';

class mainchat extends StatefulWidget {
  const mainchat({Key? key}) : super(key: key);

  @override
  State<mainchat> createState() => _mainchatState(); 
}

class _mainchatState extends State<mainchat> {
  TextEditingController _sendMessageController = TextEditingController();
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
              'Marillie Wingston',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
        actions: [
          Icon(Icons.call),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.video_call),
          SizedBox(
            width: 10,
          ),
          PopupMenuButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            position: PopupMenuPosition.under,
            itemBuilder: (Context) {
              return [
                PopupMenuItem(
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Search'),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.notifications_off),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Mute Notification'),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.message),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Disapearing Messages'),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.wallpaper),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Wallpaper'),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.report),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Reports'),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.block),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Block'),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.remove_circle_rounded),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Clear Chat'),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.import_export),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Export Chat'),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.shortcut),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Add ShortCut'),
                      ],
                    ),
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
                Icons.more_horiz_rounded,
                size: 20,
                color: Onboarolors.black,
              ),
            ),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  height: 25,
                  width: 50,
                  decoration: BoxDecoration(
                      // color: Onboarolors.halkegrey,
                      borderRadius: BorderRadius.circular(4)),
                  child: Center(child: Text('Today')),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 90,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Onboarolors.blue,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(25))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: ListTile(
                        title: Text(
                          'Hi , good morning \n Jenny .... ',
                          style:
                              TextStyle(fontSize: 18, color: Onboarolors.black),
                        ),
                        trailing: Container(
                            padding: EdgeInsets.only(top: 35),
                            child: Icon(
                              Icons.check_circle,
                              color: Onboarolors.black,
                              size: 20,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 120,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Onboarolors.blue,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(25))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: ListTile(
                        title: Text(
                          'Have not seen you long time since you were in college',
                          style:
                              TextStyle(fontSize: 18, color: Onboarolors.black),
                        ),
                        trailing: Container(
                            padding: EdgeInsets.only(top: 60),
                            child: Icon(
                              Icons.check_circle,
                              color: Onboarolors.black,
                              size: 20,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 90,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Onboarolors.halkegrey,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(10),
                                topRight: Radius.circular(25))),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: ListTile(
                            title: Text(
                              'Hello, Morning to Andrew',
                              style: TextStyle(
                                  fontSize: 18, color: Onboarolors.white),
                            ),
                            trailing: Container(
                              padding: EdgeInsets.only(top: 35),
                              child: Text(
                                '02:30',
                                style: TextStyle(
                                    fontSize: 10, color: Onboarolors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 80.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 120,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Onboarolors.halkegrey,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(25))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: ListTile(
                        title: Text(
                          'Haha , yes it is about 5 years we have not seen each other',
                          style:
                              TextStyle(fontSize: 18, color: Onboarolors.white),
                        ),
                        trailing: Container(
                          padding: EdgeInsets.only(top: 35),
                          child: Text(
                            '02:30',
                            style: TextStyle(
                                fontSize: 10, color: Onboarolors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 90,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Onboarolors.blue,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(25))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: ListTile(
                        title: Text(
                          'Let make a plan to meetup this weekend',
                          style:
                              TextStyle(fontSize: 18, color: Onboarolors.black),
                        ),
                        trailing: Container(
                            padding: EdgeInsets.only(top: 35),
                            child: Icon(
                              Icons.check_circle,
                              color: Onboarolors.black,
                              size: 20,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Onboarolors.halkegrey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.multiline,
                              controller: _sendMessageController,
                              cursorColor: Onboarolors.blue,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Type a message',
                                prefixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    FontAwesomeIcons.smileWink,
                                    color: Colors.grey.shade600,
                                  ),
                                ),

                                // prefixIcon: Icon(Icons.camera_alt),
                                suffixIcon: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      children: [
                                        PopupMenuButton(
                                          position: PopupMenuPosition.under,
                                          itemBuilder: (Context) {
                                            return [
                                              PopupMenuItem(
                                                child: Column(
                                                  children: [
                                                    Center(
                                                      child: Container(
                                                        height: 60,
                                                        width: 60,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                            color: Onboarolors
                                                                .green),
                                                        child: Icon(
                                                          Icons.file_copy,
                                                          color:
                                                              Onboarolors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    Text("Document"),
                                                  ],
                                                ),
                                              ),
                                            ];
                                          },
                                          icon: Icon(
                                            FontAwesomeIcons.paperclip,
                                            color: Colors.grey.shade600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    IconButton(
                                      onPressed: () =>
                                          getimage(ImageSource.camera),
                                      icon: Icon(
                                        Icons.camera_alt,
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Center(
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Onboarolors.blue),
                              child: Icon(
                                Icons.mic,
                                color: Onboarolors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
