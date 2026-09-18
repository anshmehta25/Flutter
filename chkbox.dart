import 'package:flutter/material.dart';

class checkbox extends StatefulWidget {
  const checkbox({super.key});

  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  bool ischecked = false;

  void updatecheckbox() {
    setState(() {
      ischecked = !ischecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CheckboxListTile(
              title: const Text("check box"),
              value: ischecked,
              onChanged: (v) => setState(() {
                if (v != null) ischecked = v;
              }),
            ),
          ],
        ),
      ),
    );
  }
}
