import 'package:flutter/material.dart';

class XylophonePage extends StatefulWidget {
  const XylophonePage({super.key});

  @override
  State<XylophonePage> createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF333333),
      appBar: AppBar(title: Text('Xylophone')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          XylophoneButton(soundNumber: 1, color: Colors.red),
          XylophoneButton(soundNumber: 2, color: Colors.orange),
          XylophoneButton(soundNumber: 3, color: Colors.green),
          XylophoneButton(soundNumber: 4, color: Colors.yellow),
          XylophoneButton(soundNumber: 5, color: Colors.blue),
          XylophoneButton(soundNumber: 6, color: Colors.purple),
          XylophoneButton(soundNumber: 7, color: Colors.indigo),
        ],
      ),
    );
  }
}

class XylophoneButton extends StatelessWidget {
  const XylophoneButton({
    super.key,
    required this.color,
    required this.soundNumber,
  });

  final MaterialColor color;
  final int soundNumber;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 4.0,
          horizontal: soundNumber * 5,
        ),
        child: FilledButton(
          style: FilledButton.styleFrom(backgroundColor: color.shade400),
          onPressed: () {},
          child: null,
        ),
      ),
    );
  }
}
