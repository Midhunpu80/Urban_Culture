import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:urban_culture/controller/bottomnav_controller.dart';
import 'package:urban_culture/view/screens/authscreen/login.dart';
import 'package:urban_culture/view/screens/bottonnavscreen/bottomnav_screen.dart';

void main() {
  runApp(const MyApp());
}

final bottom_controll = Get.put(bottomnav_controller());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (BuildContext, Orientation, DeviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(body: loginscreen()),
      );
    });
  }
}
