import 'package:flutter/material.dart';

class FullImageScreen extends StatelessWidget {
  final String? imageUrl;

  const FullImageScreen({super.key, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: imageUrl == null
            ? Image.asset('assets/Frame 8250.png')
            : Image.network(imageUrl!),
      ),
    );
  }
}
