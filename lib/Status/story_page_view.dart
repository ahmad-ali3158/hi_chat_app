import 'package:flutter/material.dart';
import "package:story_view/story_view.dart";

class StoryPageView extends StatelessWidget {
  const StoryPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> storyItems = [
      StoryItem.text(
        title: 'Ali',
        backgroundColor: Colors.blue,
      ),
      StoryItem.text(title: 'Ali', backgroundColor: Colors.red),
      StoryItem.text(title: 'Ali', backgroundColor: Colors.yellow),
    ];
    return Material(
        child: StoryView(
      storyItems: storyItems,
      controller: controller,
      inline: false,
      repeat: true,
    ));
  }
}
