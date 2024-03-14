import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sizer/sizer.dart';
import 'package:urban_culture/controller/bottomnav_controller.dart';
import 'package:urban_culture/main.dart';
import 'package:urban_culture/view/screens/frame1/frame1.dart';
import 'package:urban_culture/view/screens/frame2/frame2.dart';
import 'package:urban_culture/view/utilities/custom_colors.dart';

class bottomnavscreen extends StatelessWidget {
  List page = [frame1(), frame2(),frame1(), frame2(),frame1(), frame2()];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.pink,
            showUnselectedLabels: true,
            currentIndex: bottom_controll.indexx.value,
            selectedItemColor:Colors.pink ,
            
            onTap: (val) {
              bottom_controll.change(index: val);
            },
            items: [
              BottomNavigationBarItem(
              
                icon: Icon(
                  Icons.search,
                  size: 3.h,
                  color: Colors.transparent,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                
                icon: Icon(
                  Icons.search,
                  color: Colors.transparent,
                  size: 3.h,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 4.h,
                ),
                label: "Routine",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.group,
                  size: 4.h,
                ),
                label: "Streak",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.transparent,
                  size: 5.h,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.transparent,
                  size: 3.h,
                ),
                label: "",
              ),
            ]),
            body: page[bottom_controll.indexx.value],
      ),
    );
  }
}
