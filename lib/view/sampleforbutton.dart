import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class SampleImage extends StatefulWidget {
  const SampleImage({super.key});

  @override
  State<SampleImage> createState() => _SampleImageState();
}

class _SampleImageState extends State<SampleImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              print("Clicked");
            },
            child: Image.asset(
              'assets/images/instagram_logo.png',
              width: 100.w,
              height: 100.h,
            ),
          ),
          GestureDetector(
            onTap:() {
print("pressed");
            },
            child: Image.asset(
              'assets/images/instagram_logo.png',
              width: 100.w,
              height: 100.h,
            ),
          ),
        ],
      ),
    ));
  }
}
