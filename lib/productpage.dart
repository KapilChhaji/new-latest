import 'package:flutter/material.dart';

import 'companydetails.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key, required this.item}) : super(key: key);

  //ProductPage(Key? key , required this.item)) : super (key : key);
  final Companydetails item;

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
            body: Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(237, 249, 246, 1)),
                child: Padding(
                    padding:
                        const EdgeInsets.only(top: 45.0, left: 20, right: 20),
                    child: CustomScrollView(slivers: [
                      SliverFillRemaining(
                          hasScrollBody: false,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 32,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color.fromRGBO(
                                              201, 223, 218, 1)),
                                      child: IconButton(
                                        padding: const EdgeInsets.only(left: 7),
                                        icon: const Icon(Icons.arrow_back_ios),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                    const Text(
                                      "Job Details",
                                      style: TextStyle(
                                        fontSize: 24,
                                      ),
                                    ),
                                    const Spacer()
                                  ],
                                ),
                                const SizedBox(
                                  height: 26,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/${item.image}",
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.fill,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item.companyname,
                                          style: const TextStyle(fontSize: 18),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(

                                          item.companynamefild,
                                          maxLines: 1,
                                          overflow: TextOverflow.clip,
                                          softWrap: false,
                                          style: const TextStyle(fontSize: 18),
                                        ),

                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.access_time_rounded,
                                              size: 18,
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Text(item.time,
                                                style: const TextStyle(
                                                    fontSize: 14)),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Icon(
                                              Icons.camera_enhance,
                                              size: 18,
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Text(item.type,
                                                style: const TextStyle(
                                                    fontSize: 14)),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.calendar_today_outlined,
                                              size: 18,
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Text(item.date),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.location_on_outlined),
                                    Text(item.address),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 450,
                                  width: 343,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color: const Color.fromRGBO(
                                          220, 234, 231, 1)),
                                  child: SingleChildScrollView(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Description",
                                            style: TextStyle(fontSize: 22),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(item.description),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          const Text(
                                            "Salary",
                                            style: TextStyle(fontSize: 22),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(item.salary),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          const Text(
                                            "Requirements",
                                            style: TextStyle(fontSize: 22),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 32,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromRGBO(
                                                        208, 228, 224, 1)),
                                                child: const Icon(
                                                    Icons.check_outlined),
                                              ),
                                              const Text(
                                                "Designation:",
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(item
                                                  .requirements.designation),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 7,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 32,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromRGBO(
                                                        208, 228, 224, 1)),
                                                child: const Icon(
                                                    Icons.check_outlined),
                                              ),
                                              const Text(
                                                "Experience:",
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                  item.requirements.experience),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 7,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 32,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromRGBO(
                                                        208, 228, 224, 1)),
                                                child: const Icon(
                                                    Icons.check_outlined),
                                              ),
                                              const Text(
                                                "Expertise:",
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(item.requirements.expertise),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 7,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 32,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromRGBO(
                                                        208, 228, 224, 1)),
                                                child: const Icon(
                                                    Icons.check_outlined),
                                              ),
                                              const Text(
                                                "Job Functions:",
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(item
                                                  .requirements.jobfunctions),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 7,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 32,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromRGBO(
                                                        208, 228, 224, 1)),
                                                child: const Icon(
                                                    Icons.check_outlined),
                                              ),
                                              const Text(
                                                "Skills:",
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(item.requirements.skills),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 7,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 32,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromRGBO(
                                                        208, 228, 224, 1)),
                                                child: const Icon(
                                                    Icons.check_outlined),
                                              ),
                                              const Text(
                                                "Industr:",
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(item.requirements.industry),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Applicants (12)",
                                  style: TextStyle(fontSize: 22),
                                ),
                                Container(
                                  padding: EdgeInsets.zero,
                                  height: 60,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 20.0),
                                        child: Image.asset("assets/Applicatonone.png",   height: 43, width: 43, fit: BoxFit.fill,),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text("Leslie Alexander",style: TextStyle(fontSize: 20),),
                                          Text("Html, CSS, PHp, JavaScript")
                                        ],
                                      )
                                    ],
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
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      side: const BorderSide(
                                                          width: 1.5,
                                                          color: Color.fromRGBO(
                                                              169,
                                                              188,
                                                              185,
                                                              1)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15.0)),
                                                  backgroundColor:
                                                      const Color.fromRGBO(
                                                          254, 255, 255, 1),
                                                ),
                                                child: const Text(
                                                  "Delete Job",
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        16, 95, 80, 1),
                                                  ),
                                                ))),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        SizedBox(
                                          width: 170.7,
                                          height: 45.0,
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0)),
                                                backgroundColor:
                                                    const Color.fromRGBO(
                                                        16, 95, 80, 1),
                                              ),
                                              child: const Text("Unpublished")),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ]))
                    ])))));
  }
}
