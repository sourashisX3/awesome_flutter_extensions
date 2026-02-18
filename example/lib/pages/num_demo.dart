import 'package:flutter/material.dart';
import 'package:modern_extensions_flutter/modern_extensions_flutter.dart';

class NumDemoPage extends StatelessWidget {
  const NumDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final shortest = MediaQuery.of(context).size.shortestSide;
    return Scaffold(
      appBar: AppBar(title: const Text('Numeric Extensions')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Size from number: ${50.size}'),
            const SizedBox(height: 8),
            Text('WidthSize example: ${20.widthSize}'),
            const SizedBox(height: 8),
            Text('heightSize example: ${30.heightSize}'),
            const SizedBox(height: 12),
            Text('10% of height: ${10.h(context)}'),
            Text('10% of width: ${10.w(context)}'),
            Text('sp (shortestSide $shortest): ${10.sp(context)}'),
          ],
        ),
      ),
    );
  }
}
