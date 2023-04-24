import 'package:firstapp/registercom.dart';
import 'package:flutter/material.dart';

import 'fogetpage.dart';

class Signinpage extends StatefulWidget {
  const Signinpage({Key? key}) : super(key: key);

  @override
  State<Signinpage> createState() => _SigninpageState();
}

class _SigninpageState extends State<Signinpage> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Container(
          decoration:
              const BoxDecoration(color: Color.fromRGBO(237, 249, 246, 1)),
          child: Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 20, right: 20),
              child: CustomScrollView(slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Sign In", style: TextStyle(fontSize: 22)),
                        const Text("Please sign in with your email",
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
                                fillColor:
                                    const Color.fromRGBO(201, 223, 218, 1),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                hintText: "Email Address",
                                contentPadding:
                                    const EdgeInsets.only(left: 10.0),
                              ),
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text("Password", style: TextStyle(fontSize: 18)),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 343,
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Password",
                                contentPadding:
                                    const EdgeInsets.only(left: 10.0),
                                filled: true,
                                fillColor:
                                    const Color.fromRGBO(201, 223, 218, 1),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                            )),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 22.0,
                                height: 22.0,
                                child: Checkbox(
                                  checkColor:
                                      const Color.fromRGBO(73, 91, 90, 1),
                                  value: checked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      checked = value!;
                                    });
                                  },
                                ),
                              ),
                              //const SizedBox(height: 10,),
                              const Padding(
                                padding: EdgeInsets.only(right: 75.0),
                                child: Text(
                                  'Remember Me',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(127, 139, 138, 0.5)),
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Forgotpage()));
                                  },
                                  child: const Text(
                                    "Forgot Password? ",
                                    style: TextStyle(
                                        color: Color.fromRGBO(16, 95, 80, 1)),
                                  )),
                            ]),
                        Center(
                          child: SizedBox(
                            width: 344.0,
                            height: 45.0,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  primary: const Color.fromRGBO(16, 95, 80, 1),
                                ),
                                child: const Text("Submit")),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Center(child: Text("Or Login Using")),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: SizedBox(
                            width: 343.0,
                            height: 45.0,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Signinpage()));
                              },
                              style: ElevatedButton.styleFrom(
                                  side: const BorderSide(
                                      width: 1,
                                      color:
                                          Color.fromRGBO(255, 255, 255, 0.4)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  primary:
                                      const Color.fromRGBO(237, 249, 246, 1)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/faceb.png",
                                    height: 21.57,
                                    width: 10.4,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Text("Login with Facebook",
                                      style: TextStyle(color: Colors.black)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: SizedBox(
                            width: 343.0,
                            height: 45.0,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Signinpage()));
                              },
                              style: ElevatedButton.styleFrom(
                                  side: const BorderSide(
                                      width: 1,
                                      color:
                                          Color.fromRGBO(255, 255, 255, 0.4)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  primary:
                                      const Color.fromRGBO(237, 249, 246, 1)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/gogl.png",
                                    height: 20,
                                    width: 19.86,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text("Login with Google Plus",
                                      style: TextStyle(color: Colors.black)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: SizedBox(
                            width: 343.0,
                            height: 45.0,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Signinpage()));
                              },
                              style: ElevatedButton.styleFrom(
                                  side: const BorderSide(
                                      width: 1,
                                      color:
                                          Color.fromRGBO(255, 255, 255, 0.4)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  primary:
                                      const Color.fromRGBO(237, 249, 246, 1)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/apple.png",
                                    height: 26,
                                    width: 21.84,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text("Login with Apple",
                                      style: TextStyle(color: Colors.black)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // const SizedBox(
                        //   height: 10,
                        // ),

                        // Padding(
                        //     padding: const EdgeInsets.only(left: 60.0),
                        //     child: Row(
                        //         children: const [
                        //           Text("Didn’t Have an Account? ",style: TextStyle(color: Color.fromRGBO(127, 139, 138, 0.5))),
                        //           TextButton(onPressed: (null),
                        //               child: Text("Sign up",style: TextStyle(color: Color.fromRGBO(16, 95, 80, 1)),)),
                        //         ]
                        //     ),
                        //   ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 60.0),
                              child: Row(children: [
                                const Text("Didn’t Have an Account? ",
                                    style: TextStyle(
                                        color: Color.fromRGBO(
                                            127, 139, 138, 0.5))),
                                TextButton(
                                  child: const Text(
                                    "Sign up",
                                    style: TextStyle(
                                        color: Color.fromRGBO(16, 95, 80, 1)),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const RagisterCom()),
                                    );
                                  },
                                ),
                              ]),
                            ),
                          ),
                        )
                      ]),
                )
              ])),
        ),
      ),
    );
  }
}
