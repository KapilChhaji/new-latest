import 'package:firstapp/productpage.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'companydetails.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final List<Widget> _widgetOptions = [
    const HomeTab(), // see the HomeTab class below
    const SettingTab(), // see the SettingsTab class below
    const SettingTab(), // ,see the SettingsTab class below
    const SettingTab(), // see the SettingsTab class below
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromRGBO(16, 95, 80, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}

// Home Tab
class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  late final PageController _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  List<Companydetails> newList = [];
  final items = Companydetails.getCompany();
  int l = 0;

  @override
  initState() {
    newList = items.cast<Companydetails>();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromRGBO(237, 249, 246, 1)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 99,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/logo1.png",
                        height: 31,
                        width: 82,
                      ),
                      const Spacer(),
                      const Text(
                        "Home",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      const Spacer(),
                      Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(204, 220, 212, 1),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black26)),
                          child: const Icon(Icons.search)),
                      const SizedBox(
                        width: 9,
                      ),
                      Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(204, 220, 212, 1),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black26)),
                          child: Image.asset("assets/filterum.png")),
                    ],
                  ),
                ),
                Center(
                  child: ToggleSwitch(
                    minWidth: 370.0,
                    cornerRadius: 20.0,
                    activeBgColors: const [
                      [Color.fromRGBO(16, 95, 80, 1)],
                      [Color.fromRGBO(16, 95, 80, 1)]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: const Color.fromRGBO(
                      201,
                      223,
                      218,
                      1,
                    ),
                    inactiveFgColor: Colors.black,
                    initialLabelIndex: l,
                    totalSwitches: 2,
                    labels: const ['My jobs', 'Saved Jobs'],
                    radiusStyle: true,
                    onToggle: (index) {
                      if (index == 1) {
                        _controller.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.bounceIn);
                      } else {
                        _controller.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.bounceIn);
                      }
                      // print(index);
                    },
                  ),
                ),

                SizedBox(
                  height: 600,
                  width: 370,
                  child: PageView(
                    //physics: const NeverScrollableScrollPhysics(),
                    controller: _controller,
                    onPageChanged: (index) {
                      setState(() {
                        l = index;
                      });
                    },
                    children: [
                      Column(children: [
                        Expanded(
                            child: ListView.builder(
                                itemCount: newList.length,
                                itemBuilder: (context, index) {
                                  return   Column(
                                    children: [
                                      GestureDetector(
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>  ProductPage(item: newList[index],)),
                                        );
                                      },
                                       child: Container(
                                            height: 80,
                                            width: 370,
                                            decoration: BoxDecoration(
                                                color: const Color.fromRGBO(201, 223, 218, 1),
                                                borderRadius: BorderRadius.circular(18),
                                                border: Border.all(color: Colors.black26)),
                                            child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                        Image.asset(
                                        "assets/${newList[index].image}",
                                          height: 60, width: 60, fit: BoxFit.fill,
                                        ),
                                            const SizedBox(width: 10,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(newList[index].companyname,
                                                    //"CSL",
                                                    style: const TextStyle(fontSize: 16),
                                                  ),
                                                  const SizedBox(height: 5,),
                                              Text(
                                                newList[index].companynamefild,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                    fontSize: 14,
                                                    color:
                                                    Color.fromRGBO(73, 91, 90, 1)),
                                              ),
                                                  const SizedBox(height: 5,),
                                        Text(
                                        newList[index].time,
                                        style: const TextStyle(
                                        fontSize: 14,
                                        color:
                                        Color.fromRGBO(73, 91, 90, 1)),
                                        ),
                                                ],
                                              ),
                                            ),
                                 Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:  [
                                        Text(newList[index].date),
                                        const SizedBox(
                                        height: 30,
                                        ),
                                                Text(newList[index].aplicationno,
                                        style: const TextStyle(
                                        color:
                                        Color.fromRGBO(16, 95, 80, 1))),
                                        ]
                                        )
                                          ],
                                        )
                                            ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  );
                                }
                            )
                        ),

                      ]),
                      Column(children: [
                        Expanded(
                            child: ListView.builder(
                                itemCount: newList.length,
                                itemBuilder: (context, index) {
                                  return   Column(
                                    children: [
                                      Container(
                                        height: 80,
                                        width: 370,
                                        decoration: BoxDecoration(
                                            color: const Color.fromRGBO(201, 223, 218, 1),
                                            borderRadius: BorderRadius.circular(18),
                                            border: Border.all(color: Colors.black26)),
                                        child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  "assets/${newList[index].image}",
                                                  height: 60, width: 60, fit: BoxFit.fill,
                                                ),
                                                const SizedBox(width: 10,),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(newList[index].companyname,
                                                        //"CSL",
                                                        style: const TextStyle(fontSize: 16),
                                                      ),
                                                      const SizedBox(height: 5,),
                                                      Text(
                                                        newList[index].companynamefild,
                                                        style: const TextStyle(
                                                            fontSize: 14,
                                                            color:
                                                            Color.fromRGBO(73, 91, 90, 1)),
                                                      ),
                                                      const SizedBox(height: 5,),
                                                      Text(
                                                        newList[index].time,
                                                        style: const TextStyle(
                                                            fontSize: 14,
                                                            color:
                                                            Color.fromRGBO(73, 91, 90, 1)),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children:  [
                                                      Text(newList[index].date),
                                                      const SizedBox(
                                                        height: 30,
                                                      ),
                                                      Text(newList[index].aplicationno,
                                                          style: const TextStyle(
                                                              color:
                                                              Color.fromRGBO(16, 95, 80, 1))),
                                                    ]
                                                )
                                              ],
                                            )
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  );
                                }
                            )
                        ),

                      ]),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Image.asset(
        "assets/picupl.png",
        fit: BoxFit.cover,
      ),
      //   )
    ));
  }



}

// Settings Tab
class SettingTab extends StatelessWidget {
  const SettingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Settings Tab'),
    );
  }
}
