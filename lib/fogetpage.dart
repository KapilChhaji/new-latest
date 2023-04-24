import 'package:flutter/material.dart';

class Forgotpage extends StatefulWidget {
  const Forgotpage({Key? key}) : super(key: key);

  @override
  State<Forgotpage> createState() => _ForgotpageState();
}

class _ForgotpageState extends State<Forgotpage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
            decoration:
                const BoxDecoration(color: Color.fromRGBO(237, 249, 246, 1)),
            child: Padding(
                padding: const EdgeInsets.only(top: 40.0, left: 20, right: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 32,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(201, 223, 218, 1)),
                        child: IconButton( padding: const EdgeInsets.only(left: 7),
                          icon: const Icon(Icons.arrow_back_ios),

                          onPressed: () {
                            Navigator.pop(context);
                          },

                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Forgot Password",
                          style: TextStyle(fontSize: 22)),
                      const Text(
                          "Enter your email and we will send you a \n link to reset password",
                          style: TextStyle(fontSize: 16)),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Email Address",
                          style: TextStyle(fontSize: 18)),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          width: 343,
                          height: 45,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color.fromRGBO(201, 223, 218, 1),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              hintText: "Email Address",
                              contentPadding: const EdgeInsets.only(left: 10.0),
                            ),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: SizedBox(
                          width: 344.0,
                          height: 45.0,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)), backgroundColor: const Color.fromRGBO(16, 95, 80, 1),
                              ),
                              child: const Text("Send")),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60.0),
                        child: Row(children: const [
                          Text("Didn’t Receive a Link? Re",
                              style: TextStyle(
                                  color: Color.fromRGBO(127, 139, 138, 0.5))),
                          TextButton(
                              onPressed: (null),
                              child: Text(
                                "send Link ",
                                style: TextStyle(
                                    color: Color.fromRGBO(16, 95, 80, 1)),
                              )),
                        ]),
                      ),
                    ]))));
  }
}
