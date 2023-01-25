import 'package:codigo6_whatsapp/pages/chat_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  late TabController myTabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // print("INITTTTTTTT");
    myTabController = TabController(length: 4, vsync: this);
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
        title: Text("Whatsapp"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt_outlined)
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.search)
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert)
          ),
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
            Tab( icon: Icon(Icons.group)),
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.message),
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
