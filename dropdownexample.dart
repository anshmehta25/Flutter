import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String unit = "unit 1";

  void setDropDownValue() {
    setState(() {
      unit = 'unit 3';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: unit,
              isExpanded: false,
              items: const [
                DropdownMenuItem(
                  value: 'unit 1',
                  child: Text('unit 1'),
                ),
                DropdownMenuItem(
                  value: 'unit 2',
                  child: Text('unit 2'),
                ),
                DropdownMenuItem(
                  value: 'unit 3',
                  child: Text('unit 3'),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  unit = value!;
                });
              },
            ),

            const SizedBox(height: 20),

            Text(
              'Selected unit: $unit',
              style: const TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: setDropDownValue,
              child: const Text('Set Unit 3'),
            ),
          ],
        ),
      ),
    );
  }
}
