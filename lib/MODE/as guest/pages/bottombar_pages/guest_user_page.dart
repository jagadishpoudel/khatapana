import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class GuestUserPage extends StatefulWidget {
  const GuestUserPage({super.key});

  @override
  State<GuestUserPage> createState() => _GuestUserPageState();
}

class _GuestUserPageState extends State<GuestUserPage> {
  List imgs = [
    "https://khatapana.com/assets/img/pricing/khatapana-standard.svg",
    "https://khatapana.com/assets/img/pricing/khatapana-standard.svg"
  ];
  List<String> detail = [
    "Earn Together by referrals",
    "Manage your party, accounts and all of your activities"
  ];
  List<Widget> buttons = [
    ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: Colors.deepPurple)
      )
    ), child: const Text("START EARNING"),),
    ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: Colors.deepPurple)
      )
    ), child: const Text("SIGN IN TO MANAGE"),),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: GridView.builder(
          // physics: const AlwaysScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            // mainAxisSpacing: 20,
          ),
          itemCount: imgs.length,
          itemBuilder: (BuildContext context, index) {
            return Container(
              padding: const EdgeInsets.all(25),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.network(
                    imgs[index],
                    height: 50,
                  ),
                  Text(
                    detail[index],
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    children: [
                      Expanded(child: buttons[index]),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
