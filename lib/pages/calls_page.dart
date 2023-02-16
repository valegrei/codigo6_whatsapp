import 'package:codigo6_whatsapp/data/data_dummy.dart';
import 'package:codigo6_whatsapp/widgets/call_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/my_call_widget.dart';

class CallsPage extends StatelessWidget {
  DataDummy data = DataDummy();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyCallWidget(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text("Recent"),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: data.llamadas.length,
              itemBuilder: (BuildContext context, int index) {
                return CallWidget(call: data.llamadas[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
