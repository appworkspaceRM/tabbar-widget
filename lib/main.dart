import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Tab> tabList = const [
    Tab(
      child: Text(
        "Tab 1",
      ),
    ),
    Tab(
      text: "Tab 2",
    ),
    Tab(
        icon: Icon(
      Icons.phone_outlined,
    )),
  ];
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: tabList.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            title: const Text(
              "Tab Bar",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            bottom: TabBar(
              // indicator: BoxDecoration(color: Colors.amber),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              indicatorColor: Colors.amber,
              indicatorWeight: 5,
              // indicatorPadding: EdgeInsets.all(5),
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: tabList,
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text(
                  'Tab 1',
                ),
              ),
              Center(
                child: Text(
                  'Tab 2',
                ),
              ),
              Center(
                child: Icon(
                  Icons.phone_outlined,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
