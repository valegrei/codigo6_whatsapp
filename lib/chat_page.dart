import 'package:codigo6_whatsapp/data/data_dummy.dart';
import 'package:codigo6_whatsapp/widgets/item_chat_widget.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});

  DataDummy mandarina = DataDummy();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: mandarina.chats.length,
        itemBuilder: (BuildContext context, int index) {
          // print(mandarina.chats[index]);
          return ItemChatWidget(
            dataChat: mandarina.chats[index],
          );
        });
  }
}
