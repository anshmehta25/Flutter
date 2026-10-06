import 'package:flutter/material.dart';

class MyGridView extends StatefulWidget {
  const MyGridView({super.key});

  @override
  State<MyGridView> createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  final topics = [
    'Topic1',
    'Topic2',
    'Topic3',
    'Topic4',
    'Topic5',
    'Topic6',
    'Topic7',
    'Topic8',
    'Topic9',
    'Topic10',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 6,
        mainAxisSpacing: 6,
        children: [
          for (final topic in topics)
            Card(
              color: Colors.blue.shade400,
              child: Center(
                child: Text(topic),
              ),
            ),
        ],
      ),
    );
  }
}