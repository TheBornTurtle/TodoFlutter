import 'package:flutter/material.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.blueAccent
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Container(
            child: Stack(
              children: [
                TabBarView(
                  children: [
                    Container(
                      color: Colors.yellow
                    ),
                    Container(
                      color: Colors.blue
                    ),
                    Container(
                      color: Colors.red
                    ),
                    Container(
                      color: Colors.green
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 50),
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Intray"
                      ),
                      Container()
                    ]
                  ),
                )
              ],
            ),
          ),
          appBar: AppBar(
            elevation: 0.0,
            centerTitle: false,
            title: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.rss_feed)),
                Tab(icon: Icon(Icons.ac_unit)),
                Tab(icon: Icon(Icons.alarm))
              ],
              unselectedLabelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
            ),
          ),
        )
      )
    );
  }
}