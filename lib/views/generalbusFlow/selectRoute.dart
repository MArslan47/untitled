import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/views/generalbusFlow/routePlan.dart';

import '../../widgets/customText.dart';

class SelectRoute extends StatefulWidget {
  const SelectRoute({super.key});

  @override
  State<SelectRoute> createState() => _SelectRouteState();
}

class _SelectRouteState extends State<SelectRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 8,right: 8,top: 62).r,
        child: Column(
          children: [
            Stack(
              children: [
                Image(image: AssetImage('assets/images/actionbar.png'),height: 138.h,width: 414.w,),
                Padding(
                  padding: const EdgeInsets.only(left: 23,top: 20),
                  child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: Image(image: AssetImage('assets/images/backicon.png'),width: 40.19.w,height: 40.19.h,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 23,top: 85,bottom: 24).r,
                  child: CustomText(text: 'Select Route',weight: FontWeight.w700,size: 20.sp,color: Colors.white,),
                )
              ],
            ),
            SizedBox(height: 25.h,),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30).r,
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      CustomText(text: 'Pick your desired route',weight: FontWeight.w900,size: 18.sp,),
                      SizedBox(width: 30.w,),
                        Image(image: AssetImage('assets/images/daewoo.png'),height: 44.h,width: 64,),
                      ],
                    ),
                    // SizedBox(height: 10.h,),
                    SizedBox(
                      height: 200.h,
                      child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10).r,
                          child: Container(
                            height: 74.h,
                            width: 474,

                            child: Column(mainAxisAlignment:  MainAxisAlignment.center,
                              children: [
                                Row(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        CustomText(text: 'Route # 1',size: 8.sp,),
                                        CustomText(text: '05',size: 23.sp,weight: FontWeight.bold,),
                                        CustomText(text: '30 PM',size: 10.sp,),
                                      ],
                                    ),
                                    SizedBox(width: 15.w,),
                                    Container(height: 40.h,width: 01.w,color: Colors.black,),
                                    SizedBox(width: 15.w,),
                                    Column(
                                      children: [
                                        CustomText(text: '05:30 PM',size: 9.35.sp,),
                                        CustomText(text: 'Faizabad',size: 14.50.sp,weight: FontWeight.bold,),
                                      ],
                                    ),
                                    SizedBox(width: 8.w,),
                                    Icon(Icons.arrow_right_rounded),
                                    SizedBox(width: 12.h,),
                                    Column(
                                      children: [
                                        CustomText(text: '05:30 PM',size: 9.35.sp,),
                                        CustomText(text: 'Highway',size: 14.50.sp,weight: FontWeight.bold,),
                                      ],
                                    ),
                                    SizedBox(width: 8.w,),
                                    Icon(Icons.arrow_right_rounded),
                                    SizedBox(width: 12.w,),
                                    Column(
                                      children: [
                                        CustomText(text: '05:30 PM',size: 9.35.sp,),
                                        CustomText(text: 'AirPort',size: 14.50.sp,weight: FontWeight.bold,),
                                      ],
                                    ),

                                  ],
                                ),
                                SizedBox(height: 05.h,),
                                Container(
                                  height: 01.h,
                                  width: 300.w,
                                  color: Colors.blue.shade300,
                                ),
                              ],
                            ),
                          )
                        );
                      },),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 45.h,),
            GestureDetector(
              onTap:  () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RoutePlan(),));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 5,right: 5).r,
                child: Center(
                  child: Container(
                    height: 46.h,
                    width: 364.w,
                    decoration: BoxDecoration(
                      color: Color(0xff00ADD4),
                      borderRadius: BorderRadius.circular(20).r,
                    ),
                    child: Center(
                      child: CustomText(text: 'Proceed',size: 16.sp,
                        weight: FontWeight.w500,color: Colors.white,),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
