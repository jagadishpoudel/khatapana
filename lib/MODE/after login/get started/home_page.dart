import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Row(
              children: [
                SvgPicture.network(
                  "https://khatapana.com/assets/img/pricing/khatapana-standard.svg",
                  height: 20,
                ),
                Text("PERSONAL", style: TextStyle(fontWeight: FontWeight.w500)),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ],
        ),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.card_giftcard)),
              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.search)),
              IconButton(onPressed: (){}, icon: Icon(Icons.message_outlined)),
              IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none))
            ]
      ),
      body: Column(
        children: [
          Row(
            children: [],
          )
        ],
      ),
    );
  }
}
