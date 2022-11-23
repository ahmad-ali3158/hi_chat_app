import 'package:flutter/material.dart';

class chattest extends StatelessWidget {
  const chattest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          color: Colors.white,
          child: Row(
            children: <Widget>[
              SizedBox(width: 8.0),
              Icon(Icons.insert_emoticon,
                  size: 30.0, color: Theme.of(context).hintColor),
              SizedBox(width: 8.0),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Type a message',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Icon(Icons.attach_file,
                  size: 30.0, color: Theme.of(context).hintColor),
              SizedBox(width: 8.0),
              Icon(Icons.camera_alt,
                  size: 30.0, color: Theme.of(context).hintColor),
              SizedBox(width: 8.0),
            ],
          ),
        ),
      ),
    ));
  }
}
