import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job/constants/app_constants.dart';
import 'package:job/controllers/signup_provider.dart';
import 'package:job/views/common/app_bar.dart';
import 'package:job/views/common/app_style.dart';
import 'package:job/views/common/custom_btn.dart';
import 'package:job/views/common/custom_textfield.dart';
import 'package:job/views/common/height_spacer.dart';
import 'package:job/views/common/reusable_text.dart';
import 'package:job/views/ui/auth/login.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SignUpNotifier>(builder: (context, signUpNotifier, child) {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppBar(
            text: "Sign Up",
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(CupertinoIcons.arrow_left),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const HeightSpacer(size: 50),
              ReusableText(
                text: "Hello, Welcome!",
                style: appstyle(30, Color(kDark.value), FontWeight.w600),
              ),
              ReusableText(
                text: "Fill the details to signup for an account",
                style: appstyle(16, Color(kDarkGrey.value), FontWeight.w600),
              ),
              const HeightSpacer(size: 50),
              CustomTextField(
                controller: name,
                keyboardType: TextInputType.text,
                hintText: "Full name",
                validator: (name) {
                  if (name!.isEmpty || name.length < 3) {
                    return "Please enter a valid name";
                  } else {
                    return null;
                  }
                },
              ),
              const HeightSpacer(size: 10),
              CustomTextField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                hintText: "Email",
                validator: (email) {
                  if (email!.isEmpty || !email.contains("@")) {
                    return "Please enter a valid email";
                  } else {
                    return null;
                  }
                },
              ),
              const HeightSpacer(size: 20),
              CustomTextField(
                controller: password,
                keyboardType: TextInputType.emailAddress,
                hintText: "Password",
                obscureText: signUpNotifier.obscureText,
                validator: (password) {
                  if (signUpNotifier.passwordValidator(password ?? '')) {
                    return "Please enter a vlaid passworld with at least one uppercase, one lowercase, one digit, a special charecter and length of 8 charecters";
                  } else {
                    return null;
                  }
                },
                suffixIcon: GestureDetector(
                  onTap: () {
                    signUpNotifier.obscureText = !signUpNotifier.obscureText;
                  },
                  child: Icon(
                    signUpNotifier.obscureText
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Color(kDark.value),
                  ),
                ),
              ),
              const HeightSpacer(size: 10),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => const LoginPage());
                  },
                  child: ReusableText(
                      text: "Login",
                      style: appstyle(14, Color(kDark.value), FontWeight.w500)),
                ),
              ),
              const HeightSpacer(size: 50),
              CustomButton(
                onTap: () {},
                text: "Sign Up",
              )
            ],
          ),
        ),
      );
    });
  }
}
