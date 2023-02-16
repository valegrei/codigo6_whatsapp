import 'package:flutter/material.dart';

class MyStatusWidget extends StatelessWidget {
  const MyStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            backgroundColor: Colors.black12,
            radius: 22,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff00a884),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 18,
              ),
            ),
          ),
        ],
      ),
      title: const Text(
        "My status",
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: const Text("Tap to add status update",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black54,
          )),
    );
  }
}
