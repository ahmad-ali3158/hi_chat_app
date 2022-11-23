import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';

class StarredMessags extends StatelessWidget {
  const StarredMessags({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Onboarolors.blue,
        title: Row(
          children: [

            Text(
              'Starred Messages',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.search,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.more_horiz_rounded),
          ),
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
                      color: Onboarolors.halkegrey,
                      borderRadius: BorderRadius.circular(4)),
                  child: Center(child: Text('Today')),
                ),
              ),
            ),
            SizedBox(
              height: 20,
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
                              Icons.stars,
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
              height: 20,
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
                              Icons.stars,
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
              height: 20,
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
                          padding: const EdgeInsets.only(top: 10.0),
                          child: ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sunil Gawaskar',
                                  style: TextStyle(
                                      fontSize: 18, color: Onboarolors.blue),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  'Hello, Morning to Andrew',
                                  style: TextStyle(
                                      fontSize: 18, color: Onboarolors.white),
                                ),
                              ],
                            ),
                            trailing: Container(
                                padding: EdgeInsets.only(top: 35),
                                child: Icon(Icons.stars)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
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
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sunil Gawaskar',
                              style: TextStyle(
                                  fontSize: 18, color: Onboarolors.blue),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'Haha , yes it is about 5 years we have not seen each other',
                              style: TextStyle(
                                  fontSize: 18, color: Onboarolors.white),
                            ),
                          ],
                        ),
                        trailing: Container(
                            padding: EdgeInsets.only(top: 35),
                            child: Icon(Icons.stars)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
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
                              Icons.stars,
                              color: Onboarolors.black,
                              size: 20,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
