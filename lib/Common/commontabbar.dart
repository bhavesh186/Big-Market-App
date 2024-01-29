import 'package:flutter/material.dart';

class CommonTabBar extends StatelessWidget {
  const CommonTabBar({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.green,
      // ),
      home:MyCustomTab(),
    );
  }
}
class MyCustomTab extends StatefulWidget {
  const MyCustomTab({super.key});
  @override
  State<MyCustomTab> createState() => _MyCustomTabState();
}
class _MyCustomTabState extends State<MyCustomTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Custom SubTap"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.red),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: Colors.red[800],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelColor: Colors.black,
                  dividerColor: Colors.black,
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.add_box,
                        color: Colors.black,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.video_call,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  MyTabOne(),
                  MyTabTwo(),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
class MyTabOne extends StatelessWidget {
  const MyTabOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("This is Tab One",style: TextStyle(fontSize: 20),));
  }
}
class MyTabTwo extends StatelessWidget {
  const MyTabTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        child: Column(
          children: [
            Expanded(
              child: TabBarView(children: [
              ]),
            ),
          ],
        ),
      ),
    );// MaterialApp
  }
}
