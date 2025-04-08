import 'package:flutter/material.dart';
import 'package:stful_task/counter_card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<GlobalKey> keys = [ for(int i=0;i<5;i++) GlobalKey() ];
  int _sum = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 16,
          children: [ for(int i=0;i<5;i++) CounterCard(key: keys[i], onChanged: () => setState(() => _sum++)), Text("Summe = $_sum")],
        ),
      ),
    );
  }
}
