import 'package:flutter/material.dart';
import 'pages/widgets_demo.dart';
import 'pages/num_demo.dart';
import 'pages/interactions_demo.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'modern_extensions_flutter - Example',
      home: Scaffold(
        appBar: AppBar(title: const Text('Extensions Demo')),
        body: SafeArea(child: const DemoHome()),
      ),
    );
  }
}

class DemoHome extends StatelessWidget {
  const DemoHome({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        const Text('Example pages demonstrating package extensions'),
        const SizedBox(height: 12),
        ElevatedButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => const WidgetsDemoPage())),
            child: const Text('Widgets Extensions')),
        const SizedBox(height: 8),
        ElevatedButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => const NumDemoPage())),
            child: const Text('Numeric & Screen Extensions')),
        const SizedBox(height: 8),
        ElevatedButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => const InteractionsDemoPage())),
            child: const Text('Interaction Extensions')),
      ],
    );
  }
}
