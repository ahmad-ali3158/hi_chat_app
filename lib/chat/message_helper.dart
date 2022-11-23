

import 'message_item_model.dart';



class MessageHelper {

  static var messageList = [
    MessageItemModel("John wick", "We had meeting tomorrow.", "10:10 PM"  , "msj"),
    MessageItemModel("Tom hardy", "Shine bright Like diamond", "10:20 PM"  , "msj"),
    MessageItemModel("Tom hardy", "Shine bright Like diamond", "10:30 PM" ,"msj" ),
    MessageItemModel("Tom hardy", "Shine bright Like diamond", "10:40 PM" ,"msj" ),
    MessageItemModel("John Alia", "assets/images/call_iamge.png", " 10:58 AM", "image"),
    MessageItemModel("Ema watson", "assets/images/chat 3.jpg", "11:00 PM" ,  "image"),
    MessageItemModel("Tom hardy", "Shine bright Like diamond", "11:20 PM" , "msj"),
    MessageItemModel("Ronaldo", "Ronaldo is best!", "10:10 PM", "msj"),
    MessageItemModel("Tom hardy", "assets/images/chat 5.jpg", "11:30 PM" ,"image" ),
    MessageItemModel("Tom hardy", "Shine bright Like diamond", "11:40 PM" ,  "msj"),
    MessageItemModel("Tom hardy", "Shine bright Like diamond", "11:50 PM" , "msj"),
    MessageItemModel("Tom hardy", "Shine bright Like diamond", "12:00 AM" , "msj"),
    MessageItemModel("Tom hardy", "Do subscribe", "12:10 AM" , "msj"),


  ];

  static MessageItemModel getCHatList(int position) {
    return messageList[position];
  }

  static var itemCount = messageList.length;

}