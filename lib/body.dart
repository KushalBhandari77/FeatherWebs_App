import 'package:featherwebassgn/recommendedSection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'statsContainer.dart';
import 'videoFormat.dart';
import 'slider/stack1.dart';
import 'slider/stack2.dart';
import 'slider/stack3.dart';
import 'slider/stack4.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    DateTime now = new DateTime.now();
    String formattedDate = DateFormat('dd MM, yyyy').format(now);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: data.size.width,
            decoration: BoxDecoration(
                color: Color(0xFFFFB74D),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12.0),
                  bottomRight: Radius.circular((12.0)),
                )),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5.0, 70.0, 0, 10),
                      child: Container(
                        child: Column(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  crossAxisAlignment: CrossAxisAlignment.values[50],
                          children: <Widget>[
                            Text(
                              "Welcome, Feather's",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              '$formattedDate',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 30.0),
                    Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: CircleAvatar(
                        radius: 45.0,
                        backgroundImage: AssetImage('images/feathers.jpg'),
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

          ),

          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
            child: Text(
              "Your Stats",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ), //Your Stats
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 0, 10, 0),
            child:
                StatsContainer(), //Contains every Containers in Row Showing Stats
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 20, 0, 0),
            child: Text(
              "Continue The Sessions",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ), //Continue The Sessions

          Padding(
            padding: const EdgeInsets.fromLTRB(14, 20, 10, 0),
            child: VideoFormat(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 20, 0, 0),
            child: Text(
              "Popular Courses",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ), //Popular Courses
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 0, 0.0, 0.0),
            child: LimitedBox(
              maxHeight: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[Stack1(), Stack2(), Stack3(), Stack4()],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
            child: Text(
              "Recommended",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ), //Recommended
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 0, 10, 0),
            child:
                RecommendedSection(), //Contains every Recommendations in Column
          ),
        ],
      ),
    );
  }
}
