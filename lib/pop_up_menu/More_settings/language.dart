import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  int _groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Onboarolors.blue,
        title: Row(
          children: [

            Text(
              'Language',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 25),
              child: Text('Suggested', style: TextStyle(fontSize: 18)),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  RadioListTile(
                    value: 0,
                    groupValue: _groupValue,
                    title: Text("English(US)"),
                    onChanged: Cicle,
                    activeColor: Colors.red,
                    selected: false,
                  ),
                  RadioListTile(
                    value: 1,
                    groupValue: _groupValue,
                    title: Text("English(UK)"),
                    onChanged: Cicle,
                    activeColor: Colors.red,
                    selected: false,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 25),
              child: Text('Language', style: TextStyle(fontSize: 18)),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  RadioListTile(
                    value: 10,
                    groupValue: _groupValue,
                    title: Text("Mandrian"),
                    onChanged: Cicle,
                    activeColor: Colors.red,
                    selected: false,
                  ),
                  RadioListTile(
                    value: 9,
                    groupValue: _groupValue,
                    title: Text("Hindi"),
                    onChanged: Cicle,
                    activeColor: Colors.red,
                    selected: false,
                  ),
                  RadioListTile(
                    value: 2,
                    groupValue: _groupValue,
                    title: Text("Spanish"),
                    onChanged: Cicle,
                    activeColor: Colors.red,
                    selected: false,
                  ),
                  RadioListTile(
                    value: 3,
                    groupValue: _groupValue,
                    title: Text("French"),
                    onChanged: Cicle,
                    activeColor: Colors.red,
                    selected: false,
                  ),
                  RadioListTile(
                    value: 4,
                    groupValue: _groupValue,
                    title: Text("Arabic"),
                    onChanged: Cicle,
                    activeColor: Colors.red,
                    selected: false,
                  ),
                  RadioListTile(
                    value: 5,
                    groupValue: _groupValue,
                    title: Text("Bangali"),
                    onChanged: Cicle,
                    activeColor: Colors.red,
                    selected: false,
                  ),
                  RadioListTile(
                    value: 6,
                    groupValue: _groupValue,
                    title: Text("Russian"),
                    onChanged: Cicle,
                    activeColor: Colors.red,
                    selected: false,
                  ),
                  RadioListTile(
                    value: 7,
                    groupValue: _groupValue,
                    title: Text("Urdu"),
                    onChanged: Cicle,
                    activeColor: Colors.red,
                    selected: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void Cicle(value) {
    setState(() {
      _groupValue = value;
    });
  }
}
