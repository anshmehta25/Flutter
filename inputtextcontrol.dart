import 'package:flutter/material.dart';

class ControlInput extends StatefulWidget {
  const ControlInput({super.key});

  @override
  State<ControlInput> createState() => _ControlInputState();
}

class _ControlInputState extends State<ControlInput> {
  final TextEditingController textController =
  TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  void setTextValue() {
    setState(() {
      textController.text = "hello world";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Control"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: textController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {});
                },
              ),

              const SizedBox(height: 20),

              Text(
                'Read: ${textController.text}',
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: setTextValue,
                child: const Text('Set Text'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}