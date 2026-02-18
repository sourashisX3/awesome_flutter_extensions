import 'package:flutter/material.dart';
import 'package:modern_extensions_flutter/modern_extensions_flutter.dart';

class WidgetsDemoPage extends StatelessWidget {
  const WidgetsDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widget Extensions')),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          const Text('Padding / Margin / Alignment / Flex / OnTap demos'),
          const SizedBox(height: 12),
          Container(
              color: Colors.blueAccent,
              child: const Text('Padded').paddingAll(16)),
          const SizedBox(height: 12),
          Container(color: Colors.green, child: const Text('With Margin'))
              .marginAll(12),
          const SizedBox(height: 12),
          SizedBox(
              height: 80,
              child: Container(
                  color: Colors.amber,
                  child: const Text('Center').alignCenter())),
          const SizedBox(height: 12),
          SizedBox(
            height: 80,
            child: Row(children: [
              Container(
                      color: Colors.purple,
                      child: const Center(child: Text('E')))
                  .toExpanded(),
              Container(
                      color: Colors.pink, child: const Center(child: Text('F')))
                  .toFlexible(flex: 2),
            ]),
          ),
          const SizedBox(height: 12),
          Container(
            color: Colors.teal,
            height: 48,
            child: const Center(child: Text('Tap zone')),
          ).onTap(() {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Tapped (WidgetsDemo)')));
          }),
        ],
      ),
    );
  }
}
