import 'package:flutter/material.dart';

class Calander extends StatefulWidget {
  const Calander({super.key});

  @override
  State<Calander> createState() => _CalanderState();
}

class _CalanderState extends State<Calander> {
  DateTime? data;
  Future<void> pickdate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: data ?? DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );

    if (!mounted || picked == null) return;
    setState(() => data = picked);
  }

  void setDateValue() {
    setState(() {
      data = DateTime(2024, 1, 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    final text =
        data == null ? "no date" : "${data!.day}/${data!.month}/${data!.year}";
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(text),
            ElevatedButton(
              onPressed: pickdate,
              child: const Text('pick data'),
            ),
            ElevatedButton(
              onPressed: setDateValue,
              child: const Text('set Date to 01/01/2024'),
            ),
          ],
        ),
      ),
    );
  }
}
