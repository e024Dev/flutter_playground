import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophonePage extends StatefulWidget {
  const XylophonePage({super.key});

  @override
  State<XylophonePage> createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {
  final player = AudioPlayer();
  void playSound(int soundNumber) async {
    await player.play(AssetSource('audio/note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF333333),
      appBar: AppBar(title: Text('Xylophone')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          XylophoneButton(
            soundNumber: 1,
            color: Colors.red,
            callBack: playSound,
          ),
          XylophoneButton(
            soundNumber: 2,
            color: Colors.orange,
            callBack: playSound,
          ),
          XylophoneButton(
            soundNumber: 3,
            color: Colors.green,
            callBack: playSound,
          ),
          XylophoneButton(
            soundNumber: 4,
            color: Colors.yellow,
            callBack: playSound,
          ),
          XylophoneButton(
            soundNumber: 5,
            color: Colors.blue,
            callBack: playSound,
          ),
          XylophoneButton(
            soundNumber: 6,
            color: Colors.purple,
            callBack: playSound,
          ),
          XylophoneButton(
            soundNumber: 7,
            color: Colors.indigo,
            callBack: playSound,
          ),
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
    required this.callBack,
  });

  final MaterialColor color;
  final int soundNumber;
  final Function(int) callBack;

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
          onPressed: () {
            callBack(soundNumber);
          },
          child: null,
        ),
      ),
    );
  }
}
