import 'package:codigo6_whatsapp/models/chat_model.dart';
import 'package:flutter/material.dart';

class ItemChatWidget extends StatelessWidget {
  ChatModel dataChat;
  ItemChatWidget({required this.dataChat});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(dataChat.avatar),
        backgroundColor: Colors.black12,
        radius: 22,
      ),
      title: Text(
        dataChat.name,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        dataChat.message,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            dataChat.time,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.0,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
