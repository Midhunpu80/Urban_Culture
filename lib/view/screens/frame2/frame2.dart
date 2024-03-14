import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:urban_culture/view/utilities/custom_colors.dart';
import 'package:urban_culture/view/utilities/custompainter.dart';
import 'package:urban_culture/view/utilities/customtext.dart';

class frame2 extends StatelessWidget {
  Color mycolor = Color.fromARGB(255, 150, 79, 101);
  var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];
  @override
  Widget build(BuildContext context) {
    final List<Map<String, double>> xValues = [
      {"1D": 80.0},
      {"1W": 50.0},
      {"1M": 60.0},
      {"3M": 30.0},
      {"1Y": 60.0},
    ];

    // Define the Y axis values for the chart
    // String will be text label and double will be value in the Map<String, double>
    final List<Map<String, double>> yValues = [
      {"": 60},
      {"": 20.0},
      {"": 40.0},
      {"": 60.0},
      {"": 80.0},
    ];

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: all_text(
              txt: "Streak", col: bl, siz: 13.sp, wei: FontWeight.bold, max: 1),
        ),
        body: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  all_text(
                      txt: "Today Goal : 3 Streak Day",
                      col: bl,
                      siz: 15.sp,
                      wei: FontWeight.bold,
                      max: 1),
                  SizedBox(
                    height: 3.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 14.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: Colors.pink.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(1.h),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            all_text(
                                txt: "Streak Days",
                                col: bl,
                                siz: 13.sp,
                                wei: FontWeight.w500,
                                max: 1),
                            all_text(
                                txt: "2",
                                col: bl,
                                siz: 16.sp,
                                wei: FontWeight.bold,
                                max: 1),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  all_text(
                      txt: "Daily Streaks",
                      col: bl,
                      siz: 12.sp,
                      wei: FontWeight.w400,
                      max: 1),
                  all_text(
                      txt: "2",
                      col: bl,
                      siz: 19.sp,
                      wei: FontWeight.bold,
                      max: 1),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: 'Last 30 Days ',
                            style: TextStyle(color: Colors.pink)),
                        TextSpan(
                          text: '+100%',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 25.h,
                        width: 100.w,
                        child: CustomPaint(
                          painter: CurvedChartPainter(
                            color: mycolor, // Set the color of the chart line
                            yValues: yValues, // Pass the Y axis values
                            strokeWidth: 2, // Set the stroke width
                            xValues: xValues, // Pass the X axis values
                            gradientColors: [
                              mycolor.withOpacity(0.1),
                              // Define the gradient colors for the chart fill
                              ///const Color.fromARGB(255, 245, 247, 245).withAlpha(100),
                              const Color(0xFFFFFFFF),
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  all_text(
                      txt: "Keep it up you are on a roll",
                      col: bl,
                      siz: 13.sp,
                      wei: FontWeight.w400,
                      max: 1),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 5.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          color: Colors.pink.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(1.h),
                        ),
                        child: Center(
                          child: all_text(
                              txt: "Get Started",
                              col: bl,
                              siz: 12.sp,
                              wei: FontWeight.bold,
                              max: 1),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
