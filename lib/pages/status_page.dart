import 'package:codigo6_whatsapp/data/data_dummy.dart';
import 'package:flutter/material.dart';

import '../widgets/my_status_widget.dart';
import '../widgets/status_widget.dart';

class StatusPage extends StatelessWidget {
  DataDummy data = DataDummy();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MyStatusWidget(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text("Recent updates"),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: data.sinVer.length,
          itemBuilder: (BuildContext context, int index) {
            return StatusWidget(status: data.sinVer[index]);
          },
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Viewed udates",
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: data.vistos.length,
          itemBuilder: (BuildContext context, int index) {
            return StatusWidget(status: data.vistos[index]);
          },
        ),
      ],
    );
  }
}
