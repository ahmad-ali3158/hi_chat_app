import 'package:flutter/material.dart';

enum Options { search, upload, copy, exit }



class ChatPopUp extends StatefulWidget {
  const ChatPopUp({Key? key}) : super(key: key);

  @override
  State<ChatPopUp> createState() => _MyAppState();
}

class _MyAppState extends State<ChatPopUp> {
  var _popupMenuItemIndex = 0;
  Color _changeColorAccordingToMenuItem = Colors.red;
  var appBarHeight = AppBar().preferredSize.height;

  _buildAppBar() {
    return AppBar(

      actions: [
        PopupMenuButton(
          onSelected: (value) {
            _onMenuItemSelected(value as int);
          },
          offset: Offset(0.0, appBarHeight),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0),
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
          ),
          itemBuilder: (ctx) => [
            _buildPopupMenuItem('Search', Icons.search, Options.search.index),
            _buildPopupMenuItem('Upload', Icons.upload, Options.upload.index),
            _buildPopupMenuItem('Copy', Icons.copy, Options.copy.index),
            _buildPopupMenuItem('Exit', Icons.exit_to_app, Options.exit.index),
          ],
        )
      ],
    );
  }

  PopupMenuItem _buildPopupMenuItem(
      String title, IconData iconData, int position) {
    return PopupMenuItem(
      value: position,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            iconData,
            color: Colors.black,
          ),
          Text(title),
        ],
      ),
    );
  }

  _onMenuItemSelected(int value) {
    setState(() {
      _popupMenuItemIndex = value;
    });

    if (value == Options.search.index) {
      _changeColorAccordingToMenuItem = Colors.red;
    } else if (value == Options.upload.index) {
      _changeColorAccordingToMenuItem = Colors.green;
    } else if (value == Options.copy.index) {
      _changeColorAccordingToMenuItem = Colors.blue;
    } else {
      _changeColorAccordingToMenuItem = Colors.purple;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    );
  }
}