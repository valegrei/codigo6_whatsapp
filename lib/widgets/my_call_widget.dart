import 'package:flutter/material.dart';

class MyCallWidget extends StatelessWidget {
  const MyCallWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        backgroundColor: Color(0xff00a884),
        radius: 22,
        child: Icon(
          Icons.link,
          color: Colors.white,
        ),
      ),
      title: Text(
        "Create call link",
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text("Share a link for your WhatsApp call",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black54,
          )),
    );
  }
}
