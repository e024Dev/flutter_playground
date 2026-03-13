import 'package:flutter/material.dart';
import 'package:flutter_playground/src/pages/xylophone_page.dart';

class FunnySoundsPage extends StatefulWidget {
  const FunnySoundsPage({super.key});

  @override
  State<FunnySoundsPage> createState() => _FunnySoundsPageState();
}

class _FunnySoundsPageState extends State<FunnySoundsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Funny Sounds')),
      body: GridView.builder(
        itemCount: 12,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          return XylophoneButton(
            color: Colors.primaries[index],
            callBack: (index) {},
          );
        },
      ),
    );
  }
}
