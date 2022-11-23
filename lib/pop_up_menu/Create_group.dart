import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/bulk_pics.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateGroup extends StatefulWidget {
  const CreateGroup({Key? key}) : super(key: key);

  @override
  State<CreateGroup> createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  TextEditingController _sendMessageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Onboarolors.blue,
        title: Row(
          children: [

            Text(
              'New Group',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(Icons.search),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(

        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 15),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/chat 5.jpg'),
                    minRadius: 25,
                    maxRadius: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 10),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 1.3,
                          height: 45,
                          decoration: BoxDecoration(
                            // color: Onboarolors.halkegrey,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.multiline,
                            controller: _sendMessageController,
                            cursorColor: Onboarolors.blue,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Type a message',
                              contentPadding: EdgeInsets.only(left: 20, top: 10),

                              // prefixIcon: Icon(Icons.camera_alt),
                              suffixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          FontAwesomeIcons.smileWink,
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 15),
              child: Container(
                height: 1,
                color: Onboarolors.halkegrey,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
                leading: Icon(
                  Icons.punch_clock_sharp,
                  // color: Onboarolors.halkeblack,
                ),
                title: Text('Disappearing Messages'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('OFF'),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                      color: Onboarolors.halkeblack,
                    ),
                  ],
                )),
            ListTile(
                leading: Icon(
                  Icons.settings,
                  // color: Onboarolors.halkeblack,
                ),
                title: Text('Group Settings'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 17,
                  // color: Onboarolors.halkeblack,
                )),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 15),
              child: Container(
                height: 1,
                color: Onboarolors.halkegrey,
              ),
            ),
            Column(
              children: [
                BulkPics(
                    PicOne: 'assets/images/chat1.jpg',
                    PicTwo: 'assets/images/chat 2.jpg',
                    PicThree: 'assets/images/chat 3.jpg',
                    PicFour: 'assets/images/chat 4.jpg'),
                BulkPics(
                    PicOne: 'assets/images/chat 5.jpg',
                    PicTwo: 'assets/images/chat 6.jpg',
                    PicThree: 'assets/images/chat 7.jpg',
                    PicFour: 'assets/images/chat 8.jpg'),
                BulkPics(
                    PicOne: 'assets/images/chat 9.jpg',
                    PicTwo: 'assets/images/chat 10.jpg',
                    PicThree: 'assets/images/chat 11.jpg',
                    PicFour: 'assets/images/chat1.jpg'),
                BulkPics(
                    PicOne: 'assets/images/chat1.jpg',
                    PicTwo: 'assets/images/chat 2.jpg',
                    PicThree: 'assets/images/chat 3.jpg',
                    PicFour: 'assets/images/chat 4.jpg'),
                BulkPics(
                    PicOne: 'assets/images/chat 5.jpg',
                    PicTwo: 'assets/images/chat 6.jpg',
                    PicThree: 'assets/images/chat 7.jpg',
                    PicFour: 'assets/images/chat 8.jpg'),
                BulkPics(
                    PicOne: 'assets/images/chat 9.jpg',
                    PicTwo: 'assets/images/chat 10.jpg',
                    PicThree: 'assets/images/chat 11.jpg',
                    PicFour: 'assets/images/chat1.jpg'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
