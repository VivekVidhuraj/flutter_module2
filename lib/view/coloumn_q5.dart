import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Coloumnq5 extends StatelessWidget {
  const Coloumnq5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.redAccent,
              width: 100.w,
              height: 100.h,
            ),
            Container(
              color: Colors.greenAccent,
              width: 100.w,
              height: 100.h,
            ),
            Container(
              color: Colors.blue,
              width: 100.w,
              height: 100.h,
            ),

          ],
        ),
      ),
    );
  }
}