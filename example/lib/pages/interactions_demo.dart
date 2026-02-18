import 'package:flutter/material.dart';
import 'package:modern_extensions_flutter/modern_extensions_flutter.dart';

class InteractionsDemoPage extends StatelessWidget {
  const InteractionsDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Interaction Extensions')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Tap and gesture extensions'),
            const SizedBox(height: 12),
            Container(
              color: Colors.orange,
              height: 48,
              child: const Center(child: Text('Tap (GestureDetector)')),
            ).onTap(() => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('GestureDetector Tap')))),
            const SizedBox(height: 12),
            Container(
              color: Colors.indigo,
              height: 48,
              child: const Center(child: Text('InkWell Tap')),
            ).onTapInkWell(() => ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('InkWell Tap')))),
            const SizedBox(height: 12),
            Container(
              color: Colors.redAccent,
              height: 48,
              child: const Center(child: Text('Double Tap')),
            ).onDoubleTap(() => ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('Double Tap')))),
          ],
        ),
      ),
    );
  }
}
