import 'package:codigo6_whatsapp/pages/chat_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController myTabController;
  int currentIndex = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // print("INITTTTTTTT");
    myTabController = TabController(initialIndex: 1, length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // print("BUILDDDDDDDDD");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Whatsapp"),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
        bottom: TabBar(
          controller: myTabController,
          indicatorColor: Colors.white,
          indicatorWeight: 3.5,
          // isScrollable: true,
          // indicatorPadding:
          //   EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
          labelColor: Colors.white,
          labelStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14.0,
          ),
          unselectedLabelColor: Colors.white70,
          tabs: const [
            Tab(icon: Icon(Icons.group)),
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS"),
          ],
          onTap: (int index) {
            currentIndex = index;
            setState(() {});
          },
        ),
      ),
      floatingActionButton: currentIndex == 0
          ? null
          : MyFAB(
              position: currentIndex,
            ),
      body: TabBarView(
        controller: myTabController,
        children: [
          const Text("Hola"),
          ChatPage(),
          const Text("Hola"),
          const Text("Hola"),
        ],
      ),
    );
  }
}

class MyFAB extends StatelessWidget {
  int position;

  MyFAB({
    Key? key,
    required this.position,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (position) {
      case 1:
        return FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.message),
        );
      case 2:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton.small(
              onPressed: () {},
              backgroundColor: const Color(0xffebecee),
              child: const Icon(Icons.edit, color: Color(0xff576570),),
            ),
            const SizedBox(height: 16,),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.camera_alt),
            ),
          ],
        );
      default:
        return FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add_call),
        );
    }
  }
}
