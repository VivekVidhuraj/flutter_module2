import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MyWidget extends StatelessWidget {
  final count= 0.obs;
  void increment()=>count.value++;
  //const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Obx(() => Text('Counter:$count')),
              ElevatedButton(onPressed: increment, child: Text('Increment'))
            ],
          ),
      ),
    );

  }
}

