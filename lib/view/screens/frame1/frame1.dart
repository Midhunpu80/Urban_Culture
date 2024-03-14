import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:urban_culture/view/utilities/custom_colors.dart';
import 'package:urban_culture/view/utilities/customtext.dart';

class frame1 extends StatelessWidget {
  const frame1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: all_text(
              txt: "Daily Skin Care",
              col: bl,
              siz: 13.sp,
              wei: FontWeight.bold,
              max: 1),
          centerTitle: true,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                trailing: FittedBox(child: Row(children: [IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),all_text(
              txt: "8:35 Pm",
              col: Colors.pink,
              siz: 8.sp,
              wei: FontWeight.bold,
              max: 1)],)),
                leading: Container(height: 5.h,width: 14.w,decoration: BoxDecoration(color: gy.withOpacity(0.2),borderRadius: BorderRadius.circular(2),),child: Center(child: Icon(Icons.check),),),
                title:all_text(
              txt: "Cleanser",
              col: bl,
              siz: 13.sp,
              wei: FontWeight.bold,
              max: 1),subtitle: all_text(
              txt: "Daily Skin Care tehmjibkbkidbfkbkdbkdbkdkjndijfdijnijdnijdgid",
              col:Colors.pink,
              siz: 8.sp,
              wei: FontWeight.w500,
              max: 2),);
              
            },
            separatorBuilder: (context, index) {
              return SizedBox();
            },
            itemCount: 5));
  }
}
