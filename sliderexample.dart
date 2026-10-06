import 'package:flutter/material.dart';

class slider extends StatefulWidget {
  const slider({super.key});

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  double value = 20;

  void updateslider() {
    setState(() {
      value = 50;
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
            Slider(
              value: value,
              min: 0,
              max: 100,
              divisions: 100,
              label: value.round().toString(),
              onChanged: (double newValue) {
                setState(() {
                  value = newValue;
                });
              },
            ),
            Text('value: ${value.round()}'),
            ElevatedButton(
              onPressed: updateslider,
              child: const Text('set value to 50'),
            ),
          ],
        ),
      ),
    );
  }
}
