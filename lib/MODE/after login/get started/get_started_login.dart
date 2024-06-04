import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khatapana/MODE/after%20login/get%20started/home_page.dart';

class GetStartedLogin extends StatelessWidget {
  GetStartedLogin({super.key});

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _phoneController = TextEditingController();

  void _validateAndProceed(BuildContext context) {
    if (_formKey.currentState?.validate() == true) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.close),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "LET'S GET\nSTARTED!",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 28, height: 1.3),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text("Enter your mobile number"),
            const SizedBox(
              height: 8,
            ),
            Form(
              key: _formKey,
              child: TextFormField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.public_outlined),
                  hintText: "Mobile number",
                  border: OutlineInputBorder(),
                  fillColor: Color.fromRGBO(225, 221, 221, 1),
                  filled: true,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your mobile number';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 21),
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white),
                    onPressed: () => _validateAndProceed(context),
                    child: const Text("CONTINUE"),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text("or"),
                ),
                Expanded(child: Divider()),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 21),
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/google_icon.png",
                          height: 20,
                        ),
                        const Text("CONTINUE WITH GOOGLE"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 21),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(),
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/email.png",
                          height: 20,
                        ),
                        const Text("CONTINUE WITH EMAIL"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                text: 'By proceeding you agree to our ',
                style: TextStyle(
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Terms of Use',
                    style: const TextStyle(
                      color: Colors.purple,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  const TextSpan(text: ' & '),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: const TextStyle(
                      color: Colors.purple,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
