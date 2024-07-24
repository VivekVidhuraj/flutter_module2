import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterSample extends StatefulWidget {
  const RegisterSample({super.key});

  @override
  State<RegisterSample> createState() => _RegisterSampleState();
}

class _RegisterSampleState extends State<RegisterSample> {
  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  final companyController = TextEditingController();
  final websiteController = TextEditingController();
  final mailController = TextEditingController();
  final pwdController = TextEditingController();

  final registerkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register",
        ),
        elevation: 16.0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
              key: registerkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.0.w),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Phone field can't be empty";
                        }
                        String pattern = r'^[6-9]\d{9}$';
                        RegExp regex = RegExp(pattern);
                        if (!regex.hasMatch(value)) {
                          return "Enter valid phone number";
                        }
                        return null;
                      },
                      controller: phoneController,
                      decoration: InputDecoration(
                          label: Text("Phone"),
                          hintText: "Enter your number",
                          border: OutlineInputBorder()),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0.w),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Address field can't be empty";
                        }
                        String pattern = r'^[a-zA-Z0-9\s,.-]+$';
                        RegExp regex = RegExp(pattern);
                        if (!regex.hasMatch(value)) {
                          return "Enter valid address";
                        }
                        return null;
                      },
                      controller: addressController,
                      decoration: InputDecoration(
                          label: Text("Address"),
                          hintText: "Enter your address",
                          border: OutlineInputBorder()),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0.w),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Email field can't be empty";
                        }
                        String pattern =
                            r'^[a-zA-Z0-9\s,.-]+$';
                        RegExp regex = RegExp(pattern);
                        if (!regex.hasMatch(value)) {
                          return "Enter valid company id";
                        }
                        return null;
                      },
                      controller: companyController,
                      decoration: InputDecoration(
                          label: Text("Company name"),
                          hintText: "Enter your company name",
                          border: OutlineInputBorder()),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0.w),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Email field can't be empty";
                        }
                        String pattern =
                            r'^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([/\w \.-]*)*\/?$';
                        RegExp regex = RegExp(pattern);
                        if (!regex.hasMatch(value)) {
                          return "Enter valid website id";
                        }
                        return null;
                      },
                      controller: websiteController,
                      decoration: InputDecoration(
                          label: Text("Website"),
                          hintText: "Enter your website",
                          border: OutlineInputBorder()),
                    ),
                  ),
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
                      controller: mailController,
                      decoration: InputDecoration(
                          label: Text("Email"),
                          hintText: "Enter your email",
                          border: OutlineInputBorder()),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0.w),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
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
                      controller: pwdController,
                      obscureText: true,
                      decoration: InputDecoration(
                          label: Text("Password"),
                          hintText: "Enter your password",
                          border: OutlineInputBorder()),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0.w),
                    child: SizedBox(
                      width: 100.w,
                      height: 50.h,
                      child: ElevatedButton(
                        onPressed: () {
                          if (registerkey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("Successfully Registered")),
                            );
                          }
                        },
                        child: const Text("Register"),
                      ),
                    ),
                  ),
                ],
              )),
        ),
    )

    );
  }
}
