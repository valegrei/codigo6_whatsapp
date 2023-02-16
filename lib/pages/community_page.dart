import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
                "assets/images/image1.jpg",
              height: 150,
            ),
            const SizedBox(height: 24,),
            const Text(
              "Introducing communities",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.w600
              ),
            ),
            const SizedBox(height: 12,),
            const Text(
              "Easily organize your related groups and send announcements. Now, your communities, like neighborhoods or schools, can have thier own space.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black45,
                  fontWeight: FontWeight.w400
              ),
            ),
            const SizedBox(height: 36,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xff008069),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: const Text("Start your community",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }

}