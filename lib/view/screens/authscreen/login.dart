import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:urban_culture/view/screens/authscreen/signupscreen.dart';
import 'package:urban_culture/view/utilities/custom_colors.dart';
import 'package:urban_culture/view/utilities/customtext.dart';
import 'package:urban_culture/view/utilities/textformfiled.dart';

class loginscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 25.h,
                width: 100.w,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100.h),
                        bottomLeft: Radius.circular(100.h)))),
            all_text(
                txt: "Login",
                col: Colors.pink,
                siz: 25.sp,
                wei: FontWeight.bold,
                max: 1),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: textformfield_reause(
                  hint: "  Enter Email  address", label: "Email"),
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: textformfield_reause(
                  hint: "  Enter password", label: "Password"),
            ),
            SizedBox(
              height: 5.h,
            ),
            InkWell(
              onTap: () {
              },
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Container(
                  height: 6.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(1.h)),
                  child: Center(
                    child: all_text(
                        txt: "Login",
                        col: wh,
                        siz: 12.sp,
                        wei: FontWeight.bold,
                        max: 1),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            all_text(
                txt: "or", col: bl, siz: 12.sp, wei: FontWeight.bold, max: 1),
            InkWell(
              onTap: (){
                                Get.to(() => signup_screen());

              },
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Container(
                  height: 6.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(1.h)),
                  child: Center(
                    child: all_text(
                        txt: "Signup",
                        col: wh,
                        siz: 12.sp,
                        wei: FontWeight.bold,
                        max: 1),
                  ),
                ),
              ),
            ),
            all_text(
                txt: "if you dont have any account signup ?",
                col: bl,
                siz: 11.sp,
                wei: FontWeight.bold,
                max: 1),
          ],
        ),
      ),
    );
  }
}
