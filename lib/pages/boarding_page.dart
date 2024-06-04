import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khatapana/MODE/after%20login/get%20started/get_started_login.dart';
import 'package:khatapana/MODE/as%20guest/bottom_bar.dart';

class BoardingPage extends StatefulWidget {
  const BoardingPage({super.key});

  @override
  State<BoardingPage> createState() => _BoardingPageState();
}

class _BoardingPageState extends State<BoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  // height: 200,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text(
                          'Choose your language',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Divider(),
                        ListTile(
                          title: const Text(
                            "English",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text("Phone's Default Language"),
                          trailing: Radio(
                            fillColor: MaterialStateProperty.resolveWith(
                              (states) => const Color.fromRGBO(123, 31, 162, 1),
                            ),
                            // fillColor:  Color.fromRGBO(123, 31, 162, 1),
                            // overlayColor: Color.fromRGBO(123, 31, 162, 1),
                            value: 0,
                            groupValue: 0,
                            onChanged: null,
                          ),
                        ),
                        const Divider(
                          thickness: 0.5,
                        ),
                        const ListTile(
                          title: Text(
                            "नेपाली",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text("Nepali"),
                        ),
                        const Divider(
                          thickness: 0.5,
                        ),
                        const ListTile(
                          title: Text(
                            "हिन्दी",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          subtitle: Text(
                            "Hindi",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 0.5,
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 12),
            padding: const EdgeInsets.symmetric(horizontal: 3),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: const Row(
              children: [
                Icon(Icons.language),
                SizedBox(
                  width: 5,
                ),
                Text("EN")
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (_) => GuestBottomBar()));
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => const GuestBottomBar()));
              },
              child: const Row(
                children: [
                  Text("EXPLORE AS GUEST"),
                  Icon(Icons.keyboard_double_arrow_right_rounded)
                ],
              ))
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: Center(
          child:Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 21),
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white
                ),
                onPressed: () {
                   Navigator.of(context).push(CupertinoPageRoute(builder: (_) {
          return GetStartedLogin();
        }));
                },
                child: const Text("GET STARTED"),
              ),
            ),
          ],
        )
        ),
      ),
      body: Column(
        children: [
          // SvgPicture.network("https://khatapana.com/assets/img/pricing/khatapana-standard.svg"),
        ],
      ),
    );
  }
}
