import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormSample extends StatefulWidget {
  const FormSample({super.key});

  @override
  State<FormSample> createState() => _FormSampleState();
}

class _FormSampleState extends State<FormSample> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final loginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: loginKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(20.0.w),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email field can't be empty";
                    }
                    String pattern =
                        r'^[a-zA-Z0-9._]+@[a-zA-Z0-9]+\.[a-zA-Z]+$';
                    RegExp regex = RegExp(pattern);
                    if (!regex.hasMatch(value)) {
                      return "Enter valid email id";
                    }
                    return null;
                  },
                  controller: emailController,
                  decoration: InputDecoration(
                    label: const Text("Email"),
                    hintText: "Enter email id",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0.w),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password field can't be empty";
                    }
                    String pattern =
                        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])'
                        r'[A-Za-z\d@$!%*?&]{8,}$';
                    RegExp regex = RegExp(pattern);
                    if (!regex.hasMatch(value)) {
                      return "Password must be at least 8 characters long and"
                          " include a mix of uppercase, lowercase, digits, and special characters";
                    }
                    return null;
                  },
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    label: const Text("Password"),
                    hintText: "Enter password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0.w),
                child: SizedBox(
                  width: 100.w,
                  height: 50.h,
                  child: ElevatedButton(
                    onPressed: () {
                      if (loginKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Successfully logged")),
                        );
                      }
                    },
                    child: const Text("Login"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}