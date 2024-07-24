import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColoumSamples extends StatelessWidget {
  const ColoumSamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Container(
              color: Colors.orange,
              width: 100.w,
              height: 100.h,
            ),


            Container(
              color: Colors.black,
              width: 100.w,
              height: 100.h,
            ),


            Container(
              color: Colors.green,
              width: 100.w,
              height: 100.h,
            )
          ],
        ),
      ),
    );
  }
}
