import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CounterDivisibleBy5 extends StatefulWidget {
  const CounterDivisibleBy5({super.key});

  @override
  State<CounterDivisibleBy5> createState() => _CounterDivisibleBy5State();
}

class _CounterDivisibleBy5State extends State<CounterDivisibleBy5> {
int count=0;

  counterDivisibleBy5(){
    for(int i=1;i<=20;i++){

      if(i%5==0){

        setState(() {
          count=i;
        }
        );
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("The button has pusshed this many times"),
              Text("$count")
            ],
          )),
  floatingActionButton: FloatingActionButton(onPressed:() {
   counterDivisibleBy5();
  }, child: Icon(Icons.add),),
  );
  }
}
