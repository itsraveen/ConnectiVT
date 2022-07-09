import 'package:connectivt/screens/profile_screen.dart';
import 'package:connectivt/screens/tiktok_screen.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'projects_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Linkedin Cloe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _widgetBody = const HomeScreen();
  int _currrentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  void _onItemTapped(int index) async {
    setState(() {
      if (index == 0) {
        _currrentIndex = index;
        _widgetBody = HomeScreen();
      } else if (index == 1) {
        _currrentIndex = index;
        _widgetBody = ProjectsScreen();
      } else if (index == 2) {
        _currrentIndex = index;
        _widgetBody = HomeTok();
      } else if (index == 3) {
        _currrentIndex = index;
        _widgetBody = ProfileScreen();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                PreferredSize(
                  preferredSize: Size.fromHeight(50.0),
                  child: SliverAppBar(
                    pinned: true,
                    brightness: Brightness.light,
                    backgroundColor: Color(0XFF0e76a8),
                    title: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(right: 15),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 1),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey[100],
                                    backgroundImage: const NetworkImage(
                                        "https://nuscomputing.com/assets/RaveenPrabhu.jpg"),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: 17,
                                height: 17,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                ),
                                child: const Icon(
                                  Icons.menu,
                                  color: Colors.blue,
                                  size: 14,
                                ),
                              ),
                            )
                          ]),
                        ),
                        Container(
                            child: Material(
                          elevation: 10,
                          child: Container(
                            color: Colors.grey[300],
                            width: 270,
                            height: 35,
                            child: TextFormField(
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(bottom: 3.0),
                                hintText: "Search",
                                hintStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    height: 0.5),
                                icon: Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: const Icon(
                                      Icons.search,
                                      color: Colors.black,
                                      size: 24,
                                    )),
                                border: InputBorder.none,
                                suffixIcon: Container(
                                  height: 5,
                                  width: 5,
                                  margin: const EdgeInsets.all(5),
                                  child: Icon(
                                    Icons.qr_code,
                                    color: Colors.grey[800],
                                    size: 24,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )),
                        Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 36,
                                width: 36,
                                padding: const EdgeInsets.only(left: 10),
                                child: const Icon(Icons.message_rounded),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: Container(
              child: _widgetBody,
            )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currrentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0XFF0e76a8),
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: _currrentIndex == 0
                ? const Icon(
                    Icons.home,
                    size: 25,
                  )
                : const Icon(Icons.home_outlined, size: 25),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _currrentIndex == 1
                ? const Icon(Icons.handshake, size: 26)
                : const Icon(Icons.handshake_outlined, size: 26),
            label: 'V.O.',
          ),
          BottomNavigationBarItem(
            icon: _currrentIndex == 2
                ? const Icon(Icons.movie_filter_rounded, size: 26)
                : const Icon(Icons.movie_filter_outlined, size: 26),
            label: 'Veels',
          ),
          BottomNavigationBarItem(
            icon: _currrentIndex == 3
                ? const Icon(Icons.account_circle_sharp, size: 26)
                : const Icon(Icons.account_circle_sharp, size: 26),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
