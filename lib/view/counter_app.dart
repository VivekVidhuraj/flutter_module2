import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count=0;
  incrementCounter(){
    setState(() {
      count++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("You have pushed the button this many times"),
          Text("$count")],
          

        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        incrementCounter();
      },child: Icon(Icons.add),),
      );

  }
}
