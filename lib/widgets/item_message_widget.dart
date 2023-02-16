import 'package:codigo6_whatsapp/models/message_model.dart';
import 'package:flutter/material.dart';

class ItemMessageWidget extends StatelessWidget {
  MessageModel message;

  ItemMessageWidget({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:
          message.type == "me" ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.all(6.0),
        decoration: message.type == "me"
            ? const BoxDecoration(
                color: Color(0xffe1ffc6),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(0),
                ))
            : const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(10),
                )),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 10.0,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    message.message,
                  ),
                  SizedBox(
                    width: message.type == "me" ? 52 : 30,
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 5,
              right: 4,
              child: Row(
                children: [
                  Text(
                    message.time,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.black45,
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  message.type == "me"
                      ? SizedBox(
                          width: 21,
                          child: Stack(
                            children: const [
                              Icon(
                                Icons.check,
                                size: 13,
                                color: Color(0xff53bdeb),
                              ),
                              Positioned(
                                left: 5,
                                child: Icon(
                                  Icons.check,
                                  size: 13,
                                  color: Color(0xff53bdeb),
                                ),
                              ),
                            ],
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
