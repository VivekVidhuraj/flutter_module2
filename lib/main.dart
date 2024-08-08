

import 'package:flutter/material.dart';
import 'package:flutter_module2/view/Card_Sample.dart';
import 'package:flutter_module2/view/container_sample.dart';
import 'package:flutter_module2/view/container_sample_1.dart';
import 'package:flutter_module2/view/first-screen1.dart';
import 'package:flutter_module2/view/first_screen.dart';
import 'package:flutter_module2/view/form_validator.dart';
import 'package:flutter_module2/view/get_counter.dart';
import 'package:flutter_module2/view/register_sample.dart';
import 'package:flutter_module2/view/sampleforbutton.dart';

// import 'package:flutter_module2/view/coloumn_q1.dart';
// import 'package:flutter_module2/view/coloumn_q3.dart';
//
// import 'package:flutter_module2/view/coloumn_q5.dart';

//
// import 'package:flutter_module2/view/coloumn_samples.dart';
// import 'package:flutter_module2/view/coloumnq10.dart';
// import 'package:flutter_module2/view/coloumnq11.dart';
// import 'package:flutter_module2/view/container_sample.dart';
// import 'package:flutter_module2/view/counter_app.dart';
// import 'package:flutter_module2/view/counter_divisible_5.dart';
import 'package:flutter_module2/view/scaffold_sample.dart';
import 'package:flutter_module2/view/second_screen2.dart';
import 'package:flutter_module2/view/textwidget.dart';

// import 'package:flutter_module2/view/splash_screen.dart';
// import 'package:flutter_module2/view/splash_screen2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          // initialRoute: '/',
          // routes: {
          //   '/': (context) => FirstScreen1(),
          //   '/second': (context) => SeconsScreen2(),
    //}
        home: MyWidget()
        ));
  }
}
