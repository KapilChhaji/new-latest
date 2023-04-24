import 'package:firstapp/review.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum BestTutorSite { javatpoint, w3schools, tutorialandexample }

class Jobdetails extends StatefulWidget {
  const Jobdetails({
    Key? key,
  }) : super(key: key);

  @override
  State<Jobdetails> createState() => _Jobdetails();
}

class _Jobdetails extends State<Jobdetails> {

  final _amount = TextEditingController();


  String dropdownvalue = 'Annual Pay';
  String dropdownvalue1 = 'Select Category';

  // List of items in our dropdown menu
  var items = [
    'Annual Pay',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  var items1 = [
    'Select Category',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  List<String> jobfunction = ['Art Direction', 'Illstration', 'Fashion'];
  List<String> Skills = ['Art Direction', 'Illstration', 'Fashion'];
  List<String> IndustryExperience = [
    'Accounting',
    'Tax',
    'Design',
    'Data entry',
    'Finance'
  ];
  List<String> selectIndustryExperience = [];
  String titlleex = "Choose Exprience";
  String selctedtitlleex = "";
  String titlleExpertise = "What is Your Expertise?";
  String selctedtExpertise = "";
  String titllefunction = "Job Functions";
  String selctedtfunction = "";
  String titlleSkills = "Skills";
  String selctedtSkills = "";
  String titlleIndus = "Preferred Industry Experience ";
  String selctedtiIndus = "";
  List<String> selectedSkills = [];
  List<String> selectedExperince = [];
  List<String> selectedjobfunction = [];

  bool checkboxValueCity = false;

  // List of items in our dropdown menu
  List<String> Experince = ['1-2 ', '2-5 ', '5-10 ', 'Over 10 '];
  List<String> Expertise = [
    'Design',
    'Engineering & construction',
    'Commubications and public relations',
    'Administration'
        'Finance',
    'Health Care'
  ];
  List<String> selectedExperience = [];
  List<String> selectedExpertise = [];
  late String jobtype="";
  late String joblocation="";
  var dateinput = "";

  @override
  void initState() {
    dateinput = "";
    //_controller=PageController();
    // TODO: implement initState
    super.initState();
  }
  PageController _controller =PageController();
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {

    return Material(
        child: Scaffold(
            body: PageView(
              controller: _controller,

                children:[

      Container(
        decoration:
            const BoxDecoration(color: Color.fromRGBO(237, 249, 246, 1)),
        child: Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
            child: CustomScrollView(slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Job Details", style: TextStyle(fontSize: 22)),
                          Padding(
                            padding: EdgeInsets.only(left: 190.0),
                            child: CircleAvatar(
                                radius: 5,
                                backgroundColor: Color.fromRGBO(16, 95, 80, 1)),
                          ),
                          CircleAvatar(
                              radius: 5,
                              backgroundColor:
                                  Color.fromRGBO(219, 232, 229, 1)),
                          CircleAvatar(
                              radius: 5,
                              backgroundColor: Color.fromRGBO(219, 232, 229, 1))
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text("Job Title", style: TextStyle(fontSize: 18)),
                      const SizedBox(
                        height: 12,
                      ),
                      SizedBox(
                          width: 360,
                          height: 45,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color.fromRGBO(201, 223, 218, 1),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              hintText: "Enter job title",
                              contentPadding: const EdgeInsets.only(left: 10.0),
                            ),
                          )),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text("Experience", style: TextStyle(fontSize: 18)),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        width: 360,
                        height: 45,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(201, 223, 218, 1),
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: Colors.black87)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            selectedExperince.isEmpty
                                ? const Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "Choose One",
                                      style: TextStyle(
                                        color: Color.fromRGBO(83, 104, 101, 1),
                                      ),
                                    ))
                                : Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: SizedBox(
                                        height: 20,
                                        width: 250,
                                        child: ListView(
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              for (var value
                                                  in selectedExperince)
                                                Text("$value "),
                                            ])),
                                  ),
                            IconButton(
                                icon:
                                    const Icon(Icons.keyboard_arrow_down_sharp),
                                //   child:Text("jj"),//selectedCities==null?"Modal Bottom Sheet":selectedCities.last),
                                onPressed: () async {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return _MyDialog(
                                            title: titlleex,
                                            titlleex: selctedtitlleex,
                                            cities: Experince,
                                            selectedCities: selectedExperince,
                                            onSelectedCitiesListChanged:
                                                (cities) {
                                              setState(() {
                                                selectedExperince = cities;
                                              });

                                              //print(selectedExperince);
                                            });
                                      });
                                }),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 12,
                      ),
                      const Text("Expertise ", style: TextStyle(fontSize: 18)),

                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        width: 360,
                        height: 45,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(201, 223, 218, 1),
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: Colors.black87)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            selectedExpertise.isEmpty
                                ? const Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "Select All that Applies",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(83, 104, 101, 1)),
                                    ))
                                : Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: SizedBox(
                                        height: 20,
                                        width: 250,
                                        child: ListView(
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              for (var value
                                                  in selectedExpertise)
                                                Text("$value, "),
                                            ])),
                                  ),
                            IconButton(
                                icon:
                                    const Icon(Icons.keyboard_arrow_down_sharp),
                                //   child:Text("jj"),//selectedCities==null?"Modal Bottom Sheet":selectedCities.last),
                                onPressed: () async {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return _MyDialog(
                                            title: titlleExpertise,
                                            titlleex: selctedtExpertise,
                                            cities: Expertise,
                                            selectedCities: selectedExpertise,
                                            onSelectedCitiesListChanged:
                                                (cities) {
                                              setState(() {
                                                selectedExpertise = cities;
                                              });

                                              //   print(selectedExpertise);
                                            });
                                      });
                                }),
                          ],
                        ),
                      ),
                      //   ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text("Job Functions",
                          style: TextStyle(fontSize: 18)),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        width: 360,
                        height: 45,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(201, 223, 218, 1),
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: Colors.black87)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            selectedjobfunction.isEmpty
                                ? const Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "Select All that Applies",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(83, 104, 101, 1)),
                                    ),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: SizedBox(
                                        height: 20,
                                        width: 250,
                                        child: ListView(
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              for (var value
                                                  in selectedjobfunction)
                                                Text("$value "),
                                            ])),
                                  ),
                            IconButton(
                                icon:
                                    const Icon(Icons.keyboard_arrow_down_sharp),
                                //   child:Text("jj"),//selectedCities==null?"Modal Bottom Sheet":selectedCities.last),
                                onPressed: () async {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return _MyDialog(
                                            title: titllefunction,
                                            titlleex: selctedtfunction,
                                            cities: jobfunction,
                                            selectedCities: selectedjobfunction,
                                            onSelectedCitiesListChanged:
                                                (cities) {
                                              setState(() {
                                                selectedjobfunction = cities;
                                              });

                                              //print(selectedExpertise);
                                            });
                                      });
                                }),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 12,
                      ),
                      const Text("Skills", style: TextStyle(fontSize: 18)),

                      const SizedBox(
                        height: 12,
                      ),

                      Container(
                        width: 360,
                        height: 45,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(201, 223, 218, 1),
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: Colors.black87)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            selectedSkills.isEmpty
                                ? const Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "Select All that Applies",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(83, 104, 101, 1)),
                                    ),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: SizedBox(
                                        height: 20,
                                        width: 250,
                                        child: ListView(
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              for (var value in selectedSkills)
                                                Text("$value "),
                                            ])),
                                  ),
                            IconButton(
                                icon:
                                    const Icon(Icons.keyboard_arrow_down_sharp),
                                //   child:Text("jj"),//selectedCities==null?"Modal Bottom Sheet":selectedCities.last),
                                onPressed: () async {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return _MyDialog(
                                            title: titlleSkills,
                                            titlleex: selctedtSkills,
                                            cities: Skills,
                                            selectedCities: selectedSkills,
                                            onSelectedCitiesListChanged:
                                                (cities) {
                                              setState(() {
                                                selectedSkills = cities;
                                              });

                                              // print(selectedExperince);
                                            });
                                      });
                                }),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 12,
                      ),
                      const Text("Preferred Industry Experience",
                          style: TextStyle(fontSize: 18)),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        width: 360,
                        height: 45,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(201, 223, 218, 1),
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: Colors.black87)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            selectIndustryExperience.isEmpty
                                ? const Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "Select All that Applies",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(83, 104, 101, 1)),
                                    ),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: SizedBox(
                                        height: 20,
                                        width: 250,
                                        child: ListView(
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              for (var value
                                                  in selectIndustryExperience)
                                                Text("$value "),
                                            ])),
                                  ),
                            IconButton(
                                icon:
                                    const Icon(Icons.keyboard_arrow_down_sharp),
                                //   child:Text("jj"),//selectedCities==null?"Modal Bottom Sheet":selectedCities.last),
                                onPressed: () async {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return _MyDialog(
                                          title: titlleIndus,
                                          cities: IndustryExperience,
                                          selectedCities:
                                              selectIndustryExperience,
                                          onSelectedCitiesListChanged:
                                              (cities) {
                                            setState(() {
                                              selectIndustryExperience = cities;
                                            });

                                            //print(selectIndustryExperience);
                                          },
                                          titlleex: selctedtiIndus,
                                        );
                                      });
                                }),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 12,
                      ),
                      const Text("Job Description",
                          style: TextStyle(fontSize: 18)),
                      const SizedBox(
                        height: 12,
                      ),
                      SizedBox(
                          width: 360,
                          height: 85,
                          child: TextField(
                            maxLines: 8,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color.fromRGBO(201, 223, 218, 1),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              hintText: "Enter Job Description",
                              contentPadding:
                                  const EdgeInsets.only(left: 10.0, top: 30),
                            ),
                          )),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: 170.7,
                              height: 45.0,
                              child: ElevatedButton(
                                  onPressed: () async {
                                    Navigator.pop(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 1.5,
                                            color: Color.fromRGBO(169, 188, 185, 1)
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.0)
                                    ),
                                    primary:
                                        const Color.fromRGBO(254, 255, 255, 1),
                                  ),
                                  child: const Text(
                                    "Skip",
                                    style: TextStyle(
                                      color: Color.fromRGBO(16, 95, 80, 1),
                                    ),
                                  ))),
                          const SizedBox(
                            width: 4,
                          ),
                          SizedBox(
                            width: 170.7,
                            height: 45.0,
                            child: ElevatedButton(
                                onPressed: () async {
                                  _controller.nextPage(duration: const Duration(milliseconds: 300),
                                      curve: Curves.bounceIn);
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  primary: const Color.fromRGBO(16, 95, 80, 1),
                                ),
                                child: const Text("Continue")),
                          ),
                        ],
                      ),

                      //   ),
                    ]),
              )
            ])),
      ),
      Container(
          decoration:
              const BoxDecoration(color: Color.fromRGBO(237, 249, 246, 1)),
          child: Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 20, right: 20),
              child: CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Flex Options",
                                  style: TextStyle(fontSize: 22)),
                              Padding(
                                padding: EdgeInsets.only(left: 190.0),
                                child: CircleAvatar(
                                    radius: 5,
                                    backgroundColor:
                                        Color.fromRGBO(219, 232, 229, 1)),
                              ),
                              CircleAvatar(
                                  radius: 5,
                                  backgroundColor:
                                      Color.fromRGBO(16, 95, 80, 1)),
                              CircleAvatar(
                                  radius: 5,
                                  backgroundColor:
                                      Color.fromRGBO(219, 232, 229, 1))
                            ],
                          ),
                          const Text("Job Type",
                              style: TextStyle(fontSize: 18)),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            // mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 150,
                                //   height:50,
                                child: ListTileTheme(
                                  horizontalTitleGap: 3,
                                  child: Transform.scale(
                                    scale: 1.5,
                                    child: RadioListTile(
                                      //contentPadding: const EdgeInsets.all(0),
                                      title: const Text("Contract",
                                          style: TextStyle(fontSize: 10)),
                                      value: "Contract",
                                      groupValue: jobtype,
                                      onChanged: (value) {
                                        setState(() {
                                          jobtype = value.toString();
                                        });
                                      },
                                      activeColor:
                                          const Color.fromRGBO(16, 95, 80, 1),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 160,
                                // height:50,
                                child: ListTileTheme(
                                  horizontalTitleGap: 3,
                                  child: Transform.scale(
                                    scale: 1.5,
                                    child: RadioListTile(
                                      // contentPadding: const EdgeInsets.all(0),
                                      title: const Text("Part-time",
                                          style: TextStyle(fontSize: 10)),
                                      value: "Part-time",
                                      groupValue: jobtype,
                                      onChanged: (value) {
                                        setState(() {
                                          jobtype = value.toString();
                                        });
                                      },
                                      activeColor:
                                          const Color.fromRGBO(16, 95, 80, 1),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 154,
                            //   height:50,
                            child: ListTileTheme(
                              horizontalTitleGap: 3,
                              child: Transform.scale(
                                scale: 1.5,
                                child: RadioListTile(
                                  //contentPadding: const EdgeInsets.all(0),
                                  //contentPadding:
                                  title: const Text("Full-Time",
                                      style: TextStyle(fontSize: 10)),
                                  value: "Full-Time",
                                  groupValue: jobtype,
                                  onChanged: (value) {
                                    setState(() {
                                      jobtype = value.toString();
                                    });
                                  },
                                  activeColor:
                                      const Color.fromRGBO(16, 95, 80, 1),
                                ),
                              ),
                            ),
                          ),
                          const Text("Job Location",
                              style: TextStyle(fontSize: 18)),
                          Row(
                            // mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 150,
                                //   height:50,
                                child: ListTileTheme(
                                  horizontalTitleGap: 3,
                                  child: Transform.scale(
                                    scale: 1.5,
                                    child: RadioListTile(
                                      //contentPadding: const EdgeInsets.all(0),
                                      title: const Text("At the office",
                                          style: TextStyle(fontSize: 10)),
                                      value: "At the office",
                                      groupValue: joblocation,
                                      onChanged: (value) {
                                        setState(() {
                                          joblocation = value.toString();
                                        });
                                      },
                                      activeColor:
                                          const Color.fromRGBO(16, 95, 80, 1),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 160,
                                // height:50,
                                child: ListTileTheme(
                                  horizontalTitleGap: 3,
                                  child: Transform.scale(
                                    scale: 1.5,
                                    child: RadioListTile(
                                      // contentPadding: const EdgeInsets.all(0),
                                      title: const Text("Remote",
                                          style: TextStyle(fontSize: 10)),
                                      value: "Remote",
                                      groupValue: joblocation,
                                      onChanged: (value) {
                                        setState(() {
                                          joblocation = value.toString();
                                        });
                                      },
                                      activeColor:
                                          const Color.fromRGBO(16, 95, 80, 1),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            // mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 150,
                                //   height:50,
                                child: ListTileTheme(
                                  horizontalTitleGap: 3,
                                  child: Transform.scale(
                                    scale: 1.5,
                                    child: RadioListTile(
                                      // /contentPadding:  t,
                                      title: const Text(
                                        "Combination",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      value: "Combination",
                                      groupValue: joblocation,
                                      onChanged: (value) {
                                        setState(() {
                                          joblocation = value.toString();
                                        });
                                      },
                                      activeColor:
                                          const Color.fromRGBO(16, 95, 80, 1),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 160,
                                // height:50,
                                child: ListTileTheme(
                                  horizontalTitleGap: 3,
                                  child: Transform.scale(
                                    scale: 1.5,
                                    child: RadioListTile(
                                      // contentPadding: const EdgeInsets.all(0),
                                      title: const Text("Unsure Right Now",
                                          style: TextStyle(fontSize: 10)),
                                      value: "Unsure Right Now",
                                      groupValue: joblocation,
                                      onChanged: (value) {
                                        setState(() {
                                          joblocation = value.toString();
                                        });
                                      },
                                      activeColor:
                                          const Color.fromRGBO(16, 95, 80, 1),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Text("Address", style: TextStyle(fontSize: 18)),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                              width: 360,
                              height: 45,
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor:
                                      const Color.fromRGBO(201, 223, 218, 1),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  hintText: "Enter Location",
                                  contentPadding:
                                      const EdgeInsets.only(left: 10.0),
                                ),
                              )),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                      width: 170.7,
                                      height: 45.0,
                                      child: ElevatedButton(
                                          onPressed: () async {
                                            _controller.previousPage(duration: const Duration(milliseconds: 300),
                                                curve: Curves.bounceIn);
                                          },
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                side: const BorderSide(
                                                    width: 1.5,
                                                    color: Color.fromRGBO(169, 188, 185, 1)
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        15.0)),
                                            primary: const Color.fromRGBO(
                                                254, 255, 255, 1),
                                          ),
                                          child: const Text(
                                            "Back",
                                            style: TextStyle(
                                              color:
                                                  Color.fromRGBO(16, 95, 80, 1),
                                            ),
                                          ))),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  SizedBox(
                                    width: 170.7,
                                    height: 45.0,
                                    child: ElevatedButton(
                                        onPressed: () async {
                                          _controller.nextPage(duration: const Duration(milliseconds: 300),
                                              curve: Curves.bounceIn);
                                        },
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15.0)),
                                          primary: const Color.fromRGBO(
                                              16, 95, 80, 1),
                                        ),
                                        child: const Text("Continue")),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]),
                  ),
                ],
              ))),
      Container(
          decoration:
              const BoxDecoration(color: Color.fromRGBO(237, 249, 246, 1)),
          child: Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 20, right: 20),
              child: CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Compensation",
                                  style: TextStyle(fontSize: 22)),
                              Padding(
                                padding: EdgeInsets.only(left: 170.0),
                                child: CircleAvatar(
                                    radius: 5,
                                    backgroundColor:
                                        Color.fromRGBO(219, 232, 229, 1)),
                              ),
                              CircleAvatar(
                                  radius: 5,
                                  backgroundColor:
                                      Color.fromRGBO(219, 232, 229, 1)),
                              CircleAvatar(
                                  radius: 5,
                                  backgroundColor:
                                      Color.fromRGBO(16, 95, 80, 1))
                            ],
                          ),
                          const Text("Expected joining date",
                              style: TextStyle(fontSize: 18)),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 360,
                            height: 45,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(201, 223, 218, 1),
                                borderRadius: BorderRadius.circular(18),
                                border: Border.all(color: Colors.black87)),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  dateinput.isEmpty
                                      ? const Padding(
                                          padding: EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            "Select",
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  83, 104, 101, 1),
                                            ),
                                          ))
                                      : Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Text(dateinput),
                                        ),
                                  IconButton(
                                      onPressed: () async {
                                        DateTime? pickedDate = await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(2000),
                                            //DateTime.now() - not to allow to choose before today.
                                            lastDate: DateTime(2101));
                                        if (pickedDate != null) {
                                         // print(
                                            //  pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                          String formattedDate =
                                              DateFormat('yyyy-MM-dd')
                                                  .format(pickedDate);
                                          //print(
                                            //  formattedDate); //formatted date output using intl package =>  2021-03-16
                                          //you can implement different kind of Date Format here according to your requirement

                                          setState(() {
                                            dateinput =
                                                formattedDate; //set output date to TextField value.
                                          });
                                        } else {
                                         // print("Date is not selected");
                                        }
                                      },
                                      icon: const Icon(Icons.calendar_today_outlined))
                                ]),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("Payment option",
                              style: TextStyle(fontSize: 18)),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 360,
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
                                icon:
                                    const Icon(Icons.keyboard_arrow_down_sharp),

                                // Array list of items
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Text(items,
                                          style: const TextStyle(
                                              color: Color.fromRGBO(
                                                  83, 104, 101, 1))),
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
                            height: 10,
                          ),
                          SizedBox(
                              width: 360,
                              height: 45,
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor:
                                      const Color.fromRGBO(201, 223, 218, 1),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  hintText: "Currency",
                                  contentPadding:
                                      const EdgeInsets.only(left: 10.0),
                                ),
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 360,
                            height: 45,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(201, 223, 218, 1),
                                borderRadius: BorderRadius.circular(18),
                                border: Border.all(color: Colors.black87)),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                // Initial Value
                                value: dropdownvalue1,

                                // Down Arrow Icon
                                icon:
                                    const Icon(Icons.keyboard_arrow_down_sharp),

                                // Array list of items
                                items: items1.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Text(items,
                                          style: const TextStyle(
                                              color: Color.fromRGBO(
                                                  83, 104, 101, 1))),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue1 = newValue!;
                                  });
                                },
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width: 156,
                                  height: 45,
                                  child: TextField(
                                    controller: _amount,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: const Color.fromRGBO(
                                          201, 223, 218, 1),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                      hintText: "Amount",
                                      contentPadding:
                                          const EdgeInsets.only(left: 10.0),
                                    ),
                                  )),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                                child: Icon(Icons.minimize_outlined),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: SizedBox(
                                    width: 164,
                                    height: 45,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: const Color.fromRGBO(
                                            201, 223, 218, 1),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                        ),
                                        hintText: "Amount",
                                        contentPadding:
                                            const EdgeInsets.only(left: 10.0),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                      width: 170.7,
                                      height: 45.0,
                                      child: ElevatedButton(
                                          onPressed: () async {
                                            _controller.previousPage(duration: const Duration(milliseconds: 300),
                                                curve: Curves.bounceIn);
                                          },
                                          style: ElevatedButton.styleFrom(

                                            shape: RoundedRectangleBorder(
                                                side: const BorderSide(
                                                    width: 1.5,
                                                    color: Color.fromRGBO(169, 188, 185, 1)
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        15.0)),
                                            primary: const Color.fromRGBO(
                                                254, 255, 255, 1),
                                          ),
                                          child: const Text(
                                            "Back",
                                            style: TextStyle(
                                              color:
                                                  Color.fromRGBO(16, 95, 80, 1),
                                            ),
                                          ))),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  SizedBox(
                                    width: 170.7,
                                    height: 45.0,
                                    child: ElevatedButton(
                                        onPressed: () async {
    setState(()  {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>  Review(joblocation: joblocation,
              amount: _amount.text, jobtype: jobtype,
              experience: selectedExperince, expertise: selectedExpertise,
              jobfunctions: selectedjobfunction, skills: selectedSkills,
              industry: selectIndustryExperience)),
    );


    }
    );
    },





                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15.0)),
                                          primary: const Color.fromRGBO(
                                              16, 95, 80, 1),
                                        ),
                                        child: const Text("Continue")),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]),
                  ),
                ],
              )))
    ])));
  }
}



class _MyDialog extends StatefulWidget {
  const _MyDialog({
    required this.cities,
    required this.selectedCities,
    required this.onSelectedCitiesListChanged,
    required this.title,
    required this.titlleex,
  });

  final List<String> cities;
  final String titlleex;
  final String title;
  final List<String> selectedCities;
  final ValueChanged<List<String>> onSelectedCitiesListChanged;

  @override
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<_MyDialog> {
  List<String> _tempSelectedCities = [];
  String titlleName = "";

  @override
  void initState() {
    _tempSelectedCities = widget.selectedCities;
    // _temptitle=widget.titlleex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    titlleName = widget.title;
    return Dialog(
      child: Container(
        //height: 300,
        //width: 300,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Text(
              titlleName,
              style: const TextStyle(fontSize: 18.0, color: Colors.black),
              textAlign: TextAlign.center,
            ),

            // color: Color(0xFFfab82b),

            ListView.builder(
                shrinkWrap: true,
                itemCount: widget.cities.length,
                itemBuilder: (BuildContext context, int index) {
                  final cityName = widget.cities[index];

                  // titlleName =titlleame;
                  return CheckboxListTile(
                      title: Text(cityName),
                      value: _tempSelectedCities.contains(cityName),
                      onChanged: (bool? value) {
                        if (value!) {
                          if (!_tempSelectedCities.contains(cityName)) {
                            setState(() {
                              _tempSelectedCities.add(cityName);
                            });
                          }
                        } else {
                          if (_tempSelectedCities.contains(cityName)) {
                            setState(() {
                              _tempSelectedCities.removeWhere(
                                      (String city) => city == cityName);
                            });
                          }
                        }
                        widget.onSelectedCitiesListChanged(_tempSelectedCities);
                      });
                }),
          ],
        ),
      ),
    );
  }
}