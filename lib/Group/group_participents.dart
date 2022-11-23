import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';

class GroupParticipents extends StatelessWidget {
  const GroupParticipents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Onboarolors.blue,
        title: Row(
          children: [
            Text(
              'Group Participents',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 25,
          ),
          Icon(Icons.more_horiz_rounded),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.group_add_outlined),
                  minRadius: 30,
                  maxRadius: 30,
                ),
                title: Text(
                  'Add Paricipents',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.link),
                  minRadius: 30,
                  maxRadius: 30,
                ),
                title: Text(
                  'Invite Via Link',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/chat 10.jpg'),
                minRadius: 30,
                maxRadius: 30,
              ),
              title: Text(
                'Marillie Wingston',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('+1308-863-330'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/chat 11.jpg'),
                minRadius: 30,
                maxRadius: 30,
              ),
              title: Text(
                'Chantal Shelborn',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('+1230-863-330'),
              trailing: Container(
                height: 30,
                width: 70,
                decoration: BoxDecoration(
                    color: Onboarolors.blue,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                    child: Text(
                  'Admin',
                  style: TextStyle(
                      color: Onboarolors.black, fontWeight: FontWeight.bold),
                )),
              ),
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
              subtitle: Text('+1450-863-330'),
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
              subtitle: Text('+1382-863-330'),
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
              subtitle: Text('+8308-863-330'),
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
              subtitle: Text('+2006-863-330'),
              trailing: Container(
                height: 30,
                width: 70,
                decoration: BoxDecoration(
                    color: Onboarolors.blue,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                    child: Text(
                  'Admin',
                  style: TextStyle(
                      color: Onboarolors.black, fontWeight: FontWeight.bold),
                )),
              ),
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
              subtitle: Text('+1108-863-330'),
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
              subtitle: Text('+1700-863-330'),
            ),
          ],
        ),
      ),
    );
  }
}
