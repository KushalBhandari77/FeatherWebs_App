import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'body.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex;

  @override
  void initState() {
    super.initState();

    currentIndex = 0;
  }

  changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
    ),
      child: Scaffold(
        body: Body(),
        bottomNavigationBar: BubbleBottomBar(
            opacity: 0.8,
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
            currentIndex: currentIndex,
            hasInk: true,
            inkColor: Colors.black,
            onTap: changePage,
            items: <BubbleBottomBarItem>[
              BubbleBottomBarItem(
                  backgroundColor: Color(0xFFFFB74D),
                  icon: Image.asset(
                    "images/icons8-home-24.png",
                    color: Colors.black,
                  ),
                  activeIcon: Image.asset(
                    "images/icons8-home-24.png",
                    color: Colors.black,
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )),
              BubbleBottomBarItem(
                  backgroundColor: Color(0xFFFFB74D),
                  icon: Image.asset(
                    "images/icons8-moon-and-stars-24.png",
                    color: Colors.black,
                  ),
                  activeIcon: Image.asset(
                    "images/icons8-moon-and-stars-24.png",
                    color: Colors.black,
                  ),
                  title: Text(
                    "Mode",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )),
              BubbleBottomBarItem(
                  backgroundColor: Color(0xFFFFB74D),
                  icon: Image.asset(
                    "images/icons8-full-moon-24.png",
                    color: Colors.black,
                  ),
                  activeIcon: Image.asset(
                    "images/icons8-full-moon-24.png",
                    color: Colors.black,
                  ),
                  title: Text(
                    "Shift",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )),
              BubbleBottomBarItem(
                  backgroundColor: Color(0xFFFFB74D),
                  icon: Image.asset(
                    "images/icons8-calendar-24.png",
                    color: Colors.black,
                  ),
                  activeIcon: Image.asset(
                    "images/icons8-calendar-24.png",
                    color: Colors.black,
                  ),
                  title: Text(
                    "Events",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )),
              BubbleBottomBarItem(
                  backgroundColor: Color(0xFFFFB74D),
                  icon: Image.asset(
                    "images/icons8-user-24.png",
                    color: Colors.black,
                  ),
                  activeIcon: Image.asset(
                    "images/icons8-user-24.png",
                    color: Colors.black,
                  ),
                  title: Text(
                    "Profile",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )),
            ]),
      ),
    );

  }
}
