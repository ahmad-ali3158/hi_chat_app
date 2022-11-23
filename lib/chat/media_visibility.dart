import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';

import 'links_history.dart';
import 'media_chat_history.dart';
import 'status_history.dart';

class MediaVisibity extends StatelessWidget {
  const MediaVisibity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            backgroundColor: Onboarolors.blue,
            title: Row(
              children: [

                Text(
                  'Jenny Wilson',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            actions: [
              Icon(Icons.search),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.more_horiz),
              SizedBox(
                width: 20,
              ),
            ],
            bottom: TabBar(tabs: [
              Tab(
                text: 'Media',
              ),
              Tab(
                text: 'Docs',
              ),
              Tab(
                text: 'Links',
              ),
            ]),
          ),
        ),
        body: TabBarView(
          children: [
            MeidaChatHistory(),
            StatusHistory(),
            LinksHistoyr(),
          ],
        ),
      ),
    );
  }
}
