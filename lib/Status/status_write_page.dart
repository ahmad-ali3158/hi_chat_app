import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/Fonts.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';

class StatusWrite extends StatefulWidget {
  const StatusWrite({Key? key}) : super(key: key);

  @override
  State<StatusWrite> createState() => _StatusWriteState();
}

class _StatusWriteState extends State<StatusWrite> {
  int index = 0;
  int styleIndex = 0;
  List<Color> color = <Color>[
    Colors.yellow,
    Colors.deepOrange,
    Colors.purple,
    Colors.grey
  ];
  int index1 = 0;
  List<TextStyle> fonts = <TextStyle>[
    AppTextTheme.three,
    AppTextTheme.two,
    AppTextTheme.one,
    AppTextTheme.four,
    AppTextTheme.six,
    AppTextTheme.three,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: color[index],
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.transparent),
                child: Padding(
                  padding: const EdgeInsets.only(left: 65.0),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: fonts[styleIndex],
                        hintText: 'Type a message...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: [
                          SizedBox(width: 8.0),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  index = index + 1;
                                });
                                if (index == 3) {
                                  setState(() {
                                    index = 0;
                                  });
                                }
                              },
                              icon: Icon(
                                Icons.color_lens_outlined,
                                color: Onboarolors.black,
                              )),
                          SizedBox(width: 8.0),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                styleIndex = styleIndex + 1;
                              });
                              if (styleIndex == 2) {
                                setState(() {
                                  styleIndex = 0;
                                });
                              }
                            },
                            icon: Icon(
                              Icons.text_fields_outlined,
                              size: 30.0,
                              color: Onboarolors.black,
                            ),
                          ),
                          SizedBox(width: 8.0),

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.send,
                          size: 30.0,
                          color: Onboarolors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
