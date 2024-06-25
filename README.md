# flutter_application_15

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# TabBar Widget

pada widget AppBar terdapat properti atau name argument bottom, pada bottom dapat digunakan untuk sebuah widget TabBar yang memiiki properti Tabs yang membutuh List if Widget. TabBar sendiri harus memiliku DefaultTabController yang dapat mengatur TabBar dan Tab. DefaultTabController bisa berada di Atas Scaffold Atau TabBar akan tetapi jika TabBar harus memiliki PreferedSize. di dalam Tab memiliki banyak properti atau name argument yang dapat kita gunakan untuk mendefiniskan tab.
![app_bar](https://github.com/appworkspaceRM/tabbar-widget/assets/135511281/24896b4f-d930-41d5-b234-c12260b93e8b)


- text
- child
- icon

```dart
[
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
```

pada TabBar terdapat banyak properti yang bisa kita gunakan untuk mendifinisikan sebuah tab.

- indicatorColor untuk mewarnai indikator tab yang sedang digunakan atau fokus tab.
- indicatorWeight untuk merubah ketebalan indicator.
- indicatorPadding untuk mengatur kedalaman sebuah tab tidak untuk digunakan
- indicatorSize digunakan untuk mengatur panjang sebuah indicator.
- indicator digunakan untuk melakukan custome indicator ya
- ng akan kita buat
- labelColor untuk mewarnai sebuah label yang digunakan oleh tab saat ini atau sedang select.
- unselectLabelcolor untuk mewarnai sebuah label yang digunakan oleh tab yang sedang tidak digunakan atau tidak sedang select
- lalbelStyle digunakan untuk melakukan customize pada sebuah label  yang digunakan oleh tab saat ini atau sedang di select
- unselectLabelStyle digunakan untuk melakukan custimeze pada sebuah label tap yang sedang tidak digunakan atau tidak di select.
```dart
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
```

pada body tampilan yang biasanya kita menggunakan sebuah widget langsung maka saat mengimplementasikan sebuah widget TabBar maka perlu mengimplementasikan TabBarView yang mengindikasikan sebuah tampilan yang sesuai pemilihan sebuah Tab.

```dart
TabBarView(
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
```

```dart
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
```

![code-snapshot](https://github.com/appworkspaceRM/tabbar-widget/assets/135511281/c46d79c2-1f08-4427-b382-553266edf2df)
