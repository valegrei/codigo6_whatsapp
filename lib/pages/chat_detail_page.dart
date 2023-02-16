import 'package:codigo6_whatsapp/models/message_model.dart';
import 'package:codigo6_whatsapp/widgets/item_message_widget.dart';
import 'package:flutter/material.dart';

import '../data/data_dummy.dart';

class ChatDetailPage extends StatefulWidget {
  String image;
  String name;

  ChatDetailPage({
    super.key,
    required this.image,
    required this.name,
  });

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  DataDummy data = DataDummy();
  bool isTyping = false;
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe9e1d8),
      appBar: AppBar(
        leadingWidth: 70.0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_back,
                size: 24,
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white12,
                backgroundImage: NetworkImage(widget.image),
              ),
            ],
          ),
        ),
        titleSpacing: 0,
        title: Row(
          children: [
            const SizedBox(
              width: 4,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  const Text(
                    "Last seen today 11:00 am",
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white60,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          ListView.builder(
              itemCount: data.messages.length,
              itemBuilder: (BuildContext context, int index) {
                return ItemMessageWidget(message: data.messages[index]);
              }),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: TextField(
                        controller: messageController,
                        onChanged: (String value) {
                          isTyping = value.trim().isNotEmpty;
                          setState(() {});
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Message",
                          prefixIcon: const Icon(
                            Icons.sentiment_satisfied_alt,
                            color: Color(0xff8796a2),
                          ),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.attach_file,
                                color: Color(0xff8796a2),
                              ),
                              SizedBox(
                                width: isTyping ? 0 : 16,
                              ),
                              isTyping
                                  ? const SizedBox()
                                  : const Icon(
                                      Icons.camera_alt,
                                      color: Color(0xff8796a2),
                                    ),
                              const SizedBox(
                                width: 12,
                              ),
                            ],
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 0,
                            vertical: 14,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (isTyping) {
                          data.messages.add(MessageModel(
                            message: messageController.text,
                            type: "me",
                            time: "04:15",
                          ));
                          messageController.text = "";
                          isTyping = false;
                          setState(() {});
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.all(13),
                        decoration: const BoxDecoration(
                          color: Color(0xff00a884),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          isTyping ? Icons.send : Icons.mic,
                          size: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
