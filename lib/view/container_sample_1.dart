import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ContainerSampleTest extends StatelessWidget {
  const ContainerSampleTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(

              // color: Colors.greenAccent,
              width: 200.w,
              height: 200.h,
              child: Center(child: Text("Hello")),
decoration: BoxDecoration(

color: Colors.greenAccent,
  shape: BoxShape.circle
),
              alignment: Alignment.centerLeft,
            ),

            Row(
              children: [
                SizedBox(
                  width: 50.w,
                  height: 50.h,
                  child: Card(
                    shadowColor: Colors.red,
                    elevation: 20,
                    shape: CircleBorder(),
                    color: Colors.greenAccent,
                    child: Center(child: Text("Hello")),
                  ),
                ),
                SizedBox(
                  width: 50.w,
                  height: 50.h,
                  child: Card(
                    shadowColor: Colors.red,
                    elevation: 20,
                    shape: CircleBorder(),
                    color: Colors.greenAccent,
                    child: Center(child: Text("Hello")),
                  ),
                ),
              ],
            )


          ],
        ),
      ),
    );
  }
}
