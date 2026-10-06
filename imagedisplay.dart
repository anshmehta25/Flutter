import 'package:flutter/material.dart';

class ImageDisplay extends StatefulWidget {
  const ImageDisplay({super.key});

  @override
  State<ImageDisplay> createState() => _ImageDisplayState();
}

class _ImageDisplayState extends State<ImageDisplay> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
          image: AssetImage('assets/images/1.png'),
        ),
      ),
    );
  }
}
