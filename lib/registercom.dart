import 'package:firstapp/signinpage.dart';
import 'package:flutter/material.dart';

import 'jobdetails.dart';

class RagisterCom extends StatefulWidget {
  const RagisterCom({Key? key}) : super(key: key);

  @override
  State<RagisterCom> createState() => _RagisterComState();
}

class _RagisterComState extends State<RagisterCom> {
  String dropdownvalue = 'Select size';

  // List of items in our dropdown menu
  var items = [
    'Select size',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  //var _image;
  var imagePicker;
  var type;

  @override
  void initState() {
    super.initState();
    // imagePicker = ImagePicker();
  }

  bool _passwordVisible = false;
  String selectedValue = " Select size";
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Container(
          decoration:
              const BoxDecoration(color: Color.fromRGBO(237, 249, 246, 1)),
          child: Padding(
              padding: const EdgeInsets.only(top: 55.0, left: 20, right: 20),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(" Register for Free",
                          style: TextStyle(fontSize: 22)),
                      const Text(
                          " Create your account by filling the form below",
                          style: TextStyle(fontSize: 16)),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Container(
                          height: MediaQuery.of(context).size.width - 300,
                          width: MediaQuery.of(context).size.width - 300,
                          decoration: const BoxDecoration(
                            // borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage("assets/profilee.png"),
                                fit: BoxFit.cover),
                          ),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: () {
                                showModalBottomSheet<void>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return SizedBox(
                                      height: 200,
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            ElevatedButton(
                                              child: const Text(
                                                  "Image from Camera"),
                                              onPressed: () async {
                                                //PickedFile pickedFile =
                                                //await imagePicker.getImage(
                                                //source: ImageSource.camera,
                                                //);
                                                //  setState(() {
                                                //   if (pickedFile != null) {
                                                //_image = File(pickedFile.path);
                                                //    } else {
                                                // print('No image selected.');
                                                //  }
                                                // });
                                                // File image = File(pickedFile.path);
                                                //_image= image;
                                              },
                                            ),
                                            ElevatedButton(
                                              child: const Text(
                                                  "Image from Gallery"),
                                              onPressed: () async {
                                                //  PickedFile pickedFile =
                                                ///  await imagePicker.getImage(
                                                //    source: ImageSource.gallery,
                                                //  );

                                                // setState(() {
                                                // if (pickedFile != null) {
                                                // _image = File(pickedFile.path);
                                                //  } else {
                                                // print('No image selected.');
                                                //}
                                                //});
                                              },
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Image.asset("assets/editt.png"),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Company name",
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
                              hintText: "Company name",
                              contentPadding: const EdgeInsets.only(left: 10.0),
                            ),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Company size",
                          style: TextStyle(fontSize: 18)),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 343,
                        height: 45,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(201, 223, 218, 1),
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: Colors.black87)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            // Initial Value
                            value: dropdownvalue,

                            // Down Arrow Icon
                            icon: const Icon(Icons.keyboard_arrow_down_sharp),

                            // Array list of items
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(items,
                                      style: const TextStyle(
                                          color:
                                              Color.fromRGBO(83, 104, 101, 1))),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Work email", style: TextStyle(fontSize: 18)),
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
                              hintText: "Enter Work email",
                              contentPadding: const EdgeInsets.only(left: 10.0),
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
                            obscureText: !_passwordVisible,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color.fromRGBO(201, 223, 218, 1),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              //         borderRadius: BorderRadius.circular(15.0),
                              hintText: "Enter password",
                              contentPadding: const EdgeInsets.only(left: 10.0),
                              suffixIcon: IconButton(
                                  icon: Icon(
                                    _passwordVisible
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off,
                                  ),
                                  onPressed: () {
                                    // Update the state i.e. toogle the state of passwordVisible variable
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  }),
                            ),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Confirm password",
                          style: TextStyle(fontSize: 18)),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          width: 343,
                          height: 45,
                          child: TextField(
                            obscureText: !_passwordVisible,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color.fromRGBO(201, 223, 218, 1),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              //         borderRadius: BorderRadius.circular(15.0),
                              hintText: "Enter Confirm password",
                              contentPadding: const EdgeInsets.only(left: 10.0),
                              suffixIcon: IconButton(
                                  icon: Icon(
                                    _passwordVisible
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off,
                                  ),
                                  onPressed: () {
                                    // Update the state i.e. toogle the state of passwordVisible variable
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  }),
                            ),
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(children: [
                        SizedBox(
                          width: 22.0,
                          height: 22.0,
                          child: Checkbox(
                            checkColor: const Color.fromRGBO(73, 91, 90, 1),
                            value: checked,
                            onChanged: (bool? value) {
                              setState(() {
                                checked = value!;
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                // style: TextStyle(color: Colors.white),
                                text: const TextSpan(children: [
                                  TextSpan(
                                    text: 'I agree to the',
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(127, 139, 138, 0.5)),
                                  ),
                                  TextSpan(
                                    text: ' Terms of Service ',
                                    style: TextStyle(
                                        color: Color.fromRGBO(16, 95, 80, 1)),
                                  ),
                                  TextSpan(
                                    text: 'and',
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(127, 139, 138, 0.5)),
                                  ),
                                ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              const Text(
                                'Privacy Policy.',
                                style: TextStyle(
                                    color: Color.fromRGBO(16, 95, 80, 1)),
                              ),
                            ],
                          ),
                        ),
                      ]),
                      const SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: SizedBox(
                          width: 344.0,
                          height: 45.0,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Jobdetails()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                primary: const Color.fromRGBO(16, 95, 80, 1),
                              ),
                              child: const Text("Continue")),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Row(
                          children: [
                            const Text("Already have an account?",
                                style: TextStyle(
                                    color: Color.fromRGBO(127, 139, 138, 0.5))),
                            TextButton(
                              child: const Text(
                                "Sign in",
                                style: TextStyle(
                                    color: Color.fromRGBO(16, 95, 80, 1)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Signinpage()),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Row(children: const [
                        Text("Do you want to join as an Individual?",
                            style: TextStyle(
                                color: Color.fromRGBO(127, 139, 138, 0.5))),
                        TextButton(
                            onPressed: (null),
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                  color: Color.fromRGBO(16, 95, 80, 1)),
                            )),
                      ]),
                    ]),
              )),
        ),
      ),
    );
  }
}
