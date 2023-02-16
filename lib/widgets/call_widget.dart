import 'package:codigo6_whatsapp/models/call_model.dart';
import 'package:flutter/material.dart';

class CallWidget extends StatelessWidget {
  CallModel call;

  CallWidget({
    super.key,
    required this.call,
  });

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(call.avatar),
        backgroundColor: Colors.black12,
        radius: 22,
      ),
      title: Text(
        call.name,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Row(
        children: [
          Icon(
              call.entrante ? Icons.call_received : Icons.call_made,
              color: call.entrante ? Colors.green : Colors.red,
            size: 16,
          ),
          const SizedBox(width: 6,),
          Text(call.time,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black54,
              )),
        ],
      ),
      trailing: Icon(call.videollamada ? Icons.video_call : Icons.call,
      color: const Color(0xff00a884),),
    );
  }
}
