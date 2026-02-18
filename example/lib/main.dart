import 'package:flutter/material.dart';
import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('awesome_flutter_extensions')),
        body: Center(
          child: Container(
            color: Colors.blue,
            width: 120,
            height: 120,
          ).paddingAll(12).alignCenter(),
        ),
      ),
    );
  }
}
