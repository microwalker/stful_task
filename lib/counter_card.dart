import 'package:flutter/material.dart';

class CounterCard extends StatefulWidget {
  const CounterCard({super.key, this.onChanged});

  final Function()? onChanged;

  @override
  State<CounterCard> createState() => _CounterCardState();
}

class _CounterCardState extends State<CounterCard> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Zähler: $_counter'),
            ElevatedButton(
              onPressed: () { widget.onChanged!(); setState(() => _counter++); },
              child: const Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
