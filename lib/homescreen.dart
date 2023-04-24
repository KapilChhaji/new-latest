import 'package:firstapp/registercom.dart';
import 'package:firstapp/signinpage.dart';
import 'package:flutter/material.dart';

import 'bottomnavigationbar.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(color: Color.fromRGBO(96, 48, 80, 1)),
        child: Padding(
          padding: const EdgeInsets.only(top: 55.0, left: 20, right: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text("Female Talent Grow Careers",
                style: TextStyle(
                    fontSize: 22, color: Color.fromRGBO(255, 255, 255, 1))),
            const SizedBox(
              height: 8,
            ),
            const Text("Employers Achieve Diversity with Best Talent",
                style: TextStyle(
                    fontSize: 16, color: Color.fromRGBO(255, 255, 255, 1))),
            const SizedBox(
              height: 20,
            ),
            Container(
              // width: 340,
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(252, 230, 230, 1)),

              child: Row(
                children: [
                  Align(
                      alignment: Alignment.bottomRight,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20)),
                          child: Image.asset(
                            "assets/pro.png",
                          ))),
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0, left: 20),
                    child: Column(
                      children: [
                        const Text("I am Looking for Work",
                            style: TextStyle(fontSize: 19)),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text("Apply for genuine and verified ",
                            style: TextStyle(fontSize: 14)),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("jobs, with flexi options",
                            style: TextStyle(fontSize: 14)),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const Navigationbar()));
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              primary: const Color.fromRGBO(16, 95, 80, 1),
                            ),
                            child: const Text("Connect as a Individual"))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              //width: 340,
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(252, 255, 238, 1)),

              child: Row(
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: ClipRRect(
                        borderRadius:
                            const BorderRadius.only(bottomLeft: Radius.circular(20)),
                        child: Image.asset(
                          "assets/pro2.png",
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0, left: 20),
                    child: Column(
                      children: [
                        const Text("I am Looking to Hire",
                            style: TextStyle(fontSize: 19)),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text("Find talented and skilled",
                            style: TextStyle(fontSize: 14)),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("professionals with ease",
                            style: TextStyle(fontSize: 14)),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RagisterCom()));
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              primary: const Color.fromRGBO(16, 95, 80, 1),
                            ),
                            child: const Text("Connect as a Company"))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Center(
                child: Text(
              "Already have an account?",
              style: TextStyle(color: Colors.white),
            )),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: 227.0,
                height: 36.0,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                            width: 1,
                            color: Color.fromRGBO(255, 255, 255, 0.4)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        primary: const Color.fromRGBO(96, 48, 80, 1)),
                    child: const Text("Individual Sign In")),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: 227.0,
                height: 36.0,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Signinpage()));
                    },
                    style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                            width: 1,
                            color: Color.fromRGBO(255, 255, 255, 0.4)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        primary: const Color.fromRGBO(96, 48, 80, 1)),
                    child: const Text("Employer Sign In")),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
