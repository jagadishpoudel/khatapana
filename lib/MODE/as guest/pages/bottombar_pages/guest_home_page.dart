import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GuestHomePage extends StatefulWidget {
  const GuestHomePage({super.key});

  @override
  State<GuestHomePage> createState() => _GuestHomePageState();
}

class _GuestHomePageState extends State<GuestHomePage> {
  List imgs = [
    "https://khatapana.com/assets/img/pricing/khatapana-standard.svg",
    "https://khatapana.com/assets/img/pricing/khatapana-standard.svg"
  ];
  List<String> detail = [
    "Take care of your finances with daily money tracking.",
    "Make informed financial decisions with a clear picture of your daily cash flow."
  ];
  List<Widget> buttons = [
    ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.black,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(color: Colors.deepPurple))),
        child: const Text("START TRACKING")),
    ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.black,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(color: Colors.deepPurple))),
        child: const Text("START EXPLORING MORE")),
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
