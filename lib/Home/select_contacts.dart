import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';


import 'main_chat.dart';

class selectcontact extends StatelessWidget {
  const selectcontact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: Onboarolors.blue,
        title: Row(
          children: [


            Text(
              'Select Contacts',
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
                  backgroundImage: AssetImage('assets/images/group person.png'),
                  minRadius: 25,
                  maxRadius: 25,
                ),
                title: Text(
                  'New Group',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/person.png'),
                  minRadius: 25,
                  maxRadius: 25,
                ),
                title: Text(
                  'New Contact',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.document_scanner , color: Onboarolors.blue,),

              ),
            ),
            ListTile(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => mainchat()),
                );
              },

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
                style: TextStyle(fontWeight: FontWeight.bold , ) ,
              ),
              subtitle: Text('+1230-863-330'),

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
