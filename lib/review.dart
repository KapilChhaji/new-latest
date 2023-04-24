import 'package:firstapp/homepage.dart';
import 'package:flutter/material.dart';
class Review extends StatelessWidget {
  late String joblocation;
  late String amount;
  late String jobtype;
  late List experience;
  late List expertise;
  late List jobfunctions;
  late List skills;
  late List industry;

  Review(
      {super.key,
      required this.joblocation,
      required this.amount,
      required this.jobtype,
      required this.experience,
      required this.expertise,
      required this.jobfunctions,
      required this.skills,
      required this.industry});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
            body: Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(237, 249, 246, 1)),
                child: Padding(
                    padding:
                        const EdgeInsets.only(top: 55.0, left: 20, right: 20),
                    child: CustomScrollView(slivers: [
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Review",
                                      style: TextStyle(fontSize: 25)),
                                  SizedBox(
                                    width: 100.7,
                                    height: 45.0,
                                    child: ElevatedButton.icon(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                                width: 1.5,
                                                color: Color.fromRGBO(
                                                    169, 188, 185, 1)),
                                            borderRadius:
                                                BorderRadius.circular(15.0)),
                                        primary: const Color.fromRGBO(
                                            254, 255, 255, 1),
                                      ),

                                      icon: const Icon(
                                        Icons.mode_edit_outlined,
                                        size: 30.0,
                                        color: Colors.black,
                                      ),
                                      label: const Text(
                                        'Edit',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 18),
                                      ), // <-- Text
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Container(
                                  height: 100,
                                  width: 350,
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                          255, 251, 244, 1),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: const Color.fromRGBO(
                                              210, 150, 57, 1))),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15.0, left: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "You are almost done!",
                                          style: TextStyle(
                                              fontSize: 22,
                                              color: Color.fromRGBO(
                                                  221, 148, 6, 1)),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                            "Please verify your filled details and submit\n"
                                            "the form",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Color.fromRGBO(
                                                    221, 148, 6, 1))),
                                        // Text("You are almost done!"),
                                      ],
                                    ),
                                  )),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text("Graphic Designer",
                                  style: TextStyle(fontSize: 25)),
                              Container(
                                height: 500,
                                width: 350,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(201, 223, 218, 1),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black87)),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Job Location",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color:
                                                Color.fromRGBO(16, 95, 80, 1)),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(joblocation),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Talent Pay",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color:
                                                Color.fromRGBO(16, 95, 80, 1)),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text("$amount/hour"),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Flex Options",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color:
                                                Color.fromRGBO(16, 95, 80, 1)),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text("Work Type:$jobtype"),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Experience",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color:
                                                Color.fromRGBO(16, 95, 80, 1)),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        width: 350,
                                        child: ListView(
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              for (var value in experience)
                                                Text("${value}years")
                                            ]),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Expertise",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color:
                                                Color.fromRGBO(16, 95, 80, 1)),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        width: 350,
                                        child: ListView(
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              for (var value in expertise)
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 8.0),
                                                  child: Container(
                                                    height: 50,
                                                    //  width:70,
                                                    decoration: BoxDecoration(
                                                        color: const Color
                                                                .fromRGBO(
                                                            204, 220, 212, 1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        border: Border.all(
                                                            color: Colors
                                                                .black26)),

                                                    child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 8.0,
                                                                right: 8),
                                                        child: Text(value)),
                                                  ),
                                                ),
                                            ]),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Job Functions",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color:
                                                Color.fromRGBO(16, 95, 80, 1)),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        width: 350,
                                        child: ListView(
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              for (var value in jobfunctions)
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 8.0),
                                                  child: Container(
                                                    height: 50,
                                                    //  width:70,
                                                    decoration: BoxDecoration(
                                                        color: const Color
                                                                .fromRGBO(
                                                            204, 220, 212, 1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        border: Border.all(
                                                            color: Colors
                                                                .black26)),

                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0,
                                                              right: 8),
                                                      child: Text(value),
                                                    ),
                                                  ),
                                                ),
                                            ]),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Skills",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color:
                                                Color.fromRGBO(16, 95, 80, 1)),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        width: 350,
                                        child: ListView(
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              for (var value in skills)
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 8.0),
                                                  child: Container(
                                                    height: 50,
                                                    //  width:70,
                                                    decoration: BoxDecoration(
                                                        color: const Color
                                                                .fromRGBO(
                                                            204, 220, 212, 1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        border: Border.all(
                                                            color: Colors
                                                                .black26)),

                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0,
                                                              right: 8),
                                                      child: Text(value),
                                                    ),
                                                  ),
                                                ),
                                            ]),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Industry",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color:
                                                Color.fromRGBO(16, 95, 80, 1)),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        width: 350,
                                        child: ListView(
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              for (var value in industry)
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 8.0),
                                                  child: Container(
                                                    height: 50,
                                                    //  width:70,
                                                    decoration: BoxDecoration(
                                                        color: const Color
                                                                .fromRGBO(
                                                            204, 220, 212, 1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        border: Border.all(
                                                            color: Colors
                                                                .black26)),

                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0,
                                                              right: 8),
                                                      child: Text(value),
                                                    ),
                                                  ),
                                                ),
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                          width: 170.7,
                                          height: 45.0,
                                          child: ElevatedButton(
                                              onPressed: () async {},
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                    side: const BorderSide(
                                                        width: 1.5,
                                                        color: Color.fromRGBO(
                                                            169, 188, 185, 1)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0)),
                                                primary: const Color.fromRGBO(
                                                    254, 255, 255, 1),
                                              ),
                                              child: const Text(
                                                "Save as a Draft",
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      16, 95, 80, 1),
                                                ),
                                              ))),
                                      SizedBox(
                                        width: 170.7,
                                        height: 45.0,
                                        child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const HomePage()),
                                              );
                                            },
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15.0)),
                                              primary: const Color.fromRGBO(
                                                  16, 95, 80, 1),
                                            ),
                                            child: const Text(
                                                "Submit for Approval")),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ])))));
  }
}
