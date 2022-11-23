import 'group_message_helper.dart';

class MessageHelper1 {
  static var messageList = [
    MessageItemModel1(
        "Khan Umer", "Chalo Kal milte han sab", "Ahmad Ali", "msj"),
    MessageItemModel1("Tom hardy", "Ok Karo", "Umer", "msj"),
    MessageItemModel1(
        "Tom hardy", "Shine bright Like diamond", "Ahmad Ali", "msj"),
    MessageItemModel1(
        "Tom hardy", "Shine bright Like diamond", "Zeeshan", "msj"),
    MessageItemModel1(
        "John Alia", "assets/images/call_iamge.png", " Ahmad", "image"),
    MessageItemModel1(
        "Ema watson", "assets/images/chat 3.jpg", "Khan", "image"),
  ];

  static MessageItemModel1 getCHatList(int position) {
    return messageList[position];
  }

  static var itemCount = messageList.length;
}
