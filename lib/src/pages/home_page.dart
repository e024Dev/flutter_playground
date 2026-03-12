import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FilledButton(onPressed: () {}, child: Text('Xylophone')),
            FilledButton(onPressed: () {}, child: Text('Funny Sounds')),
            FilledButton(onPressed: () {}, child: Text('Cotação Moedas')),
          ],
        ),
      ),
    );
  }
}
