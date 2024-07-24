import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Coloumnq3 extends StatelessWidget {
  const Coloumnq3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: Colors.redAccent,
              width: 100.w,
              height: 200.h,
            ),
            Container(
              color: Colors.greenAccent,
              width: 200.w,
              height: 100.h,
            ),
            Container(
              color: Colors.blue,
              width: 100.w,
              height: 200.h,
            ),
          ],
        ),
      ),
    );
  }
}
