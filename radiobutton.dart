import 'package:flutter/material.dart';

class Radiobutton extends StatefulWidget {
  const Radiobutton({super.key});

  @override
  State<Radiobutton> createState() => _RadiobuttonState();
}

class _RadiobuttonState extends State<Radiobutton> {
  String gender = 'male';

  void setRadioValue() {
    setState(() {
      gender = 'male';
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
            RadioListTile<String>(
              title: const Text("male"),
              value: "male",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value!;
                });
              },
            ),
            RadioListTile<String>(
              title: const Text("female"),
              value: "female",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value!;
                });
              },
            ),
            Text('Selected Gender:$gender'),
            ElevatedButton(
              onPressed: setRadioValue,
              child: const Text('set gender to male'),
            ),
          ],
        ),
      ),
    );
  }
}
