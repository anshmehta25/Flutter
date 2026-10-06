import 'package:flutter/material.dart';

class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      lenght: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icons: Icon(Icons.home),text:'home'),
              Tab(icons: Icon(Icons.settings),text:'Settings'),
              Tab(icons: Icon(Icons.message_sharp),text:'Messages'),
            ],
          ),
        ),
        boddy: const TabBarView(children: [
          Center(child: LoginWidget()),
          Center(child: ScrollImages()),
          Center(child: Text('Messages')),
        ]),
      ),
    );
  }
}
