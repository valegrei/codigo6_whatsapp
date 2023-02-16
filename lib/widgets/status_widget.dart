import 'package:flutter/material.dart';

import '../models/status_model.dart';

class StatusWidget extends StatelessWidget {
  StatusModel status;
  StatusWidget({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          CircleAvatar(
            backgroundColor: status.visto ? const Color(0xffb4b9bc) : const Color(0xff00a884),
            radius: 24,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  status.avatar,
              ),
              backgroundColor: Colors.black12,
              radius: 22,
            ),
          ),
        ],
      ),
      title: Text(
        status.name,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(status.time,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black54,
          )),
    );
  }
}
