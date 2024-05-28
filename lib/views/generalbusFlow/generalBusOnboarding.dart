import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/views/generalbusFlow/busService.dart';
import 'package:untitled/widgets/customText.dart';

class BusOnboarding extends StatefulWidget {
  const BusOnboarding({super.key});

  @override
  State<BusOnboarding> createState() => _BusOnboardingState();
}

class _BusOnboardingState extends State<BusOnboarding> {
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
                  child: CustomText(text: 'General Bus Service',weight: FontWeight.w700,size: 20.sp,color: Colors.white,),
                )
              ],
            ),
            SizedBox(height: 82.5.h,),
            Image(image: AssetImage('assets/images/onboarding.png'),height: 117.h,width: 147.w,),
            SizedBox(height: 55.h,),
            CustomText(text: 'General Bus Service\nPurchasing items made easy',align: TextAlign.center,size: 22.sp,
            weight: FontWeight.w700,color: Color(0xff00ADD4),),
            CustomText(text: 'Seamlessly purchase your favorite\nproducts with a single tap',size: 18.sp,
            weight: FontWeight.w500,align: TextAlign.center,color: Color(0xff00ADD4),),
            SizedBox(height: 85.h,),
            GestureDetector(
              onTap:  () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BusService(),));
              },
              child: Container(
                height: 48.h,
                width: 364.w,
                decoration: BoxDecoration(
                  color: Color(0xff00ADD4),
                  borderRadius: BorderRadius.circular(20).r,
                ),
                child: Center(
                  child: CustomText(text: 'Reserve a Seat',size: 14.sp,
                    weight: FontWeight.w500,color: Colors.white,),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
