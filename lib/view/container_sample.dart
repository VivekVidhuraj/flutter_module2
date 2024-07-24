import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerSample1 extends StatelessWidget {
  const ContainerSample1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 100.w,
                height: 100.h,
                color: Colors.blueAccent,
                padding: const EdgeInsets.all(16.0),
                margin: const EdgeInsets.all(16.0),
                child: Center(
                  child: const Text(
                    "Helloo",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 300.w,
                height: 100.h,
                decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(width: 10, color: Colors.red)),
              ),
              Container(
                height: 200.h,
                width: 300.w,
                margin: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border(
                      left: BorderSide(color: Colors.green, width: 5),
                      right: BorderSide(color: Colors.black, width: 10),
                      top: BorderSide(color: Colors.red, width: 20),
                      bottom: BorderSide(color: Colors.purple, width: 30),
                    )),
              ),
              Container(
                width: 300.w,
                height: 200.h,
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  border: Border.all(
                    width: 10.w,
                    color: Colors.red.shade300,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              Container(
                width: 300.w,
                height: 200.h,
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  border: Border.all(
                    width: 10.w,
                    color: Colors.red.shade300,
                  ),
                  borderRadius: BorderRadius.all(Radius.elliptical(10, 30)),
                ),
              ),
              Container(
                width: 300.w,
                height: 200.h,
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    border: Border.all(
                      width: 10.w,
                      color: Colors.red.shade300,
                    ),
                    borderRadius: BorderRadius.circular(
                      10,
                    )),
              ),
              Container(
                width: 300.w,
                height: 200.h,
                margin: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  border: Border.all(
                    width: 10.w,
                    color: Colors.red.shade300,
                  ),
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(50), right: Radius.circular(10)),
                ),
              ),
              Container(
                width: 300.w,
                height: 200.h,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  border: Border.all(width: 10.w, color: Colors.red.shade300),
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(50), bottom: Radius.circular(10)),
                ),
              ),
              Container(
                width: 300,
                height: 200,
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  border: Border.all(
                    width: 10,
                    color: Colors.red.shade300,
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(40)),
                ),
              ),
              Container(
                width: 300.w,
                height: 200.h,
                margin: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                    color: Colors.greenAccent, boxShadow: [
                  BoxShadow(color: Colors.red, offset: Offset(10, 20))
                ]),
              ),
              Container(
                width: 300.w,
                height: 200.h,
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red,
                      offset: Offset(10, 20),
                      blurRadius: 30,
                    )
                  ],
                ),
              ),
              Container(
                width: 300.w,
                height: 200.h,
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  gradient: LinearGradient(
                      colors: [Colors.amber, Colors.red],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red,
                      offset: Offset(10, 20),
                      blurRadius: 30,
                    )
                  ],
                ),
              ),
              Container(
                width: 300,
                height: 200,
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  gradient: LinearGradient(
                      colors: [Colors.amber, Colors.red],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2021/07/06/21/55/meerkat-6392737_960_720.jpg"),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(10, 20),
                      blurRadius: 30,
                    )
                  ],
                ),
              ),
            ],
          ),
        ));

  }
}
