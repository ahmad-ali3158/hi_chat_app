import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/custom_status.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';

import 'Create_group.dart';

class NewGroup extends StatelessWidget {
  const NewGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.arrow_forward,
          ),
          backgroundColor: Onboarolors.blue,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CreateGroup()));
          }),
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
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 20),
              child: Container(
                height: 40,
                width: double.infinity,
                child: Text(
                  '44 of 1550 selected',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/chat 3.jpg'),
                      minRadius: 25,
                      maxRadius: 25,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 36),
                        child: Icon(
                          Icons.cancel,
                          size: 13,
                          color: Onboarolors.red,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/chat1.jpg'),
                      minRadius: 25,
                      maxRadius: 25,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 36),
                        child: Icon(
                          Icons.cancel,
                          size: 13,
                          color: Onboarolors.red,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/chat 2.jpg'),
                      minRadius: 25,
                      maxRadius: 25,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 36),
                        child: Icon(
                          Icons.cancel,
                          size: 13,
                          color: Onboarolors.red,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/chat 4.jpg'),
                      minRadius: 25,
                      maxRadius: 25,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 36),
                        child: Icon(
                          Icons.cancel,
                          size: 13,
                          color: Onboarolors.red,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/chat 5.jpg'),
                      minRadius: 25,
                      maxRadius: 25,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 36),
                        child: Icon(
                          Icons.cancel,
                          size: 13,
                          color: Onboarolors.red,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/chat 6.jpg'),
                      minRadius: 25,
                      maxRadius: 25,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 36),
                        child: Icon(
                          Icons.cancel,
                          size: 13,
                          color: Onboarolors.red,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/chat 7.jpg'),
                      minRadius: 25,
                      maxRadius: 25,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 36),
                        child: Icon(
                          Icons.cancel,
                          size: 13,
                          color: Onboarolors.red,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/chat 8.jpg'),
                      minRadius: 25,
                      maxRadius: 25,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 36),
                        child: Icon(
                          Icons.cancel,
                          size: 13,
                          color: Onboarolors.red,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
              child: Container(
                height: 1,
                color: Onboarolors.halkegrey,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            CustomStatus(
                ImageSouce: 'assets/images/chat1.jpg',
                CallerName: "Karim Benzama",
                PhoneNumber: "+3214_7672-524"),
            CustomStatus(
                ImageSouce: 'assets/images/chat 8.jpg',
                CallerName: "Omer Mir",
                PhoneNumber: "+5414_7672-524"),
            CustomStatus(
                ImageSouce: 'assets/images/chat 2.jpg',
                CallerName: "Mo Salah",
                PhoneNumber: "+6533_7672-524"),
            CustomStatus(
                ImageSouce: 'assets/images/chat 4.jpg',
                CallerName: "Cristinao",
                PhoneNumber: "+9272-6353-524"),
            CustomStatus(
                ImageSouce: 'assets/images/chat 5.jpg',
                CallerName: "Rahima Gull",
                PhoneNumber: "+8728-7262-524"),
            CustomStatus(
                ImageSouce: 'assets/images/chat 6.jpg',
                CallerName: "Sarina Wiiliams",
                PhoneNumber: "+8382-7262-524"),
            CustomStatus(
                ImageSouce: 'assets/images/chat 7.jpg',
                CallerName: "Devon Reif",
                PhoneNumber: "+8373-8574-524"),
            CustomStatus(
                ImageSouce: 'assets/images/chat 10.jpg',
                CallerName: "Salama Khalid",
                PhoneNumber: "+7836-2726-524"),
          ],
        ),
      ),
    );
  }
}
