import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';
import 'package:hi_chat_app/Status/story_page_view.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';

import 'status_write_page.dart';

class StatusMain extends StatefulWidget {
  const StatusMain({Key? key}) : super(key: key);

  @override
  State<StatusMain> createState() => _StatusMainState();
}

class _StatusMainState extends State<StatusMain> {
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 48,
            child: FloatingActionButton(
              heroTag: null,
              backgroundColor: Onboarolors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StatusWrite()),
                );
              },
              child: Icon(
                Icons.edit,
                color: Onboarolors.black,
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Onboarolors.blue,
            elevation: 5,
            child: IconButton(
              onPressed: () => getimage(ImageSource.gallery),
              icon: Icon(
                Icons.camera_alt,
                color: Onboarolors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/chat 2.jpg'),
                minRadius: 30,
                maxRadius: 30,
              ),
              title: Text(
                'My Status',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Tap to add status update'),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      'Recent updates',
                      // style: TextStyle(color: Onboarolors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/chat 10.jpg'),
                minRadius: 30,
                maxRadius: 30,
              ),
              title: Text(
                'Marillie Wingston',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('10 minutes ago'),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StoryPageView())),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/chat 11.jpg'),
                minRadius: 30,
                maxRadius: 30,
              ),
              title: Text(
                'Chantal Shelborn',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Today at 18.30'),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      'Viewed updates',
                      // style: TextStyle(color: Onboarolors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/chat 3.jpg'),
                minRadius: 30,
                maxRadius: 30,
              ),
              title: Text(
                'Chedwik Walton',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('59 minutes ago'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/chat 5.jpg'),
                minRadius: 30,
                maxRadius: 30,
              ),
              title: Text(
                'Rahima Gull',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Today at 16.20'),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      'Muted updates',
                      // style: TextStyle(color: Onboarolors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/chat 2.jpg'),
                minRadius: 30,
                maxRadius: 30,
              ),
              title: Text(
                'Watson Khan',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('30 minutes ago'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/chat 11.jpg'),
                minRadius: 30,
                maxRadius: 30,
              ),
              title: Text(
                'Sia ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Today at 12.20'),
            ),
          ],
        ),
      ),
    );
  }
}
