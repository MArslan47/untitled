import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/views/generalbusFlow/status.dart';

import '../../widgets/customText.dart';

class SeatBooking extends StatefulWidget {
  const SeatBooking({super.key});

  @override
  State<SeatBooking> createState() => _SeatBookingState();
}

class _SeatBookingState extends State<SeatBooking> {
  // List to track the booking status of each seat
  List<bool> isBooked = List<bool>.filled(20, false); // 20 seats

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 62).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  child: CustomText(text: 'Seat Booking',weight: FontWeight.w700,size: 20.sp,color: Colors.white,),
                )
              ],
            ),
            SizedBox(height: 25.h),
            Padding(
              padding: const EdgeInsets.only(left: 30).r,
              child: CustomText(
                text: 'Select your preferred seat',
                weight: FontWeight.w900,
                size: 18.sp,
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    children: [
                      SizedBox(
                        height: 480.h,
                        width: 150,
                        child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(5.0).r,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isBooked[index] = !isBooked[index];
                                  });
                                },
                                child: Container(
                                  height: 57.h,
                                  width: 51.w,
                                  decoration: BoxDecoration(
                                    color: isBooked[index] ? Colors.cyan : Color(0xffE5FDFE),
                                    borderRadius: BorderRadius.circular(10).r,
                                  ),
                                  child: Center(
                                    child: CustomText(
                                      text: isBooked[index] ? 'Booked\nSeat No.\n01' : 'Seat No.\n01',
                                      color: isBooked[index] ? Colors.white : Colors.black,
                                      align: TextAlign.center,
                                      size: 12.sp,
                                      weight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(width: 20.w),
                      SizedBox(
                        height: 480.h,
                        width: 150,
                        child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(5.0).r,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isBooked[index + 10] = !isBooked[index+10];
                                  });
                                },
                                child: Container(
                                  height: 57.h,
                                  width: 51.w,
                                  decoration: BoxDecoration(
                                    color: isBooked[index+10] ? Colors.cyan : Color(0xffE5FDFE),
                                    borderRadius: BorderRadius.circular(10).r,
                                  ),
                                  child: Center(
                                    child: CustomText(
                                      text: isBooked[index+10] ? 'Booked\nSeat No.\n01' : 'Seat No.\n01',
                                      color: isBooked[index+10] ? Colors.white : Colors.black,
                                      align: TextAlign.center,
                                      size: 12.sp,
                                      weight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 40.h),
            GestureDetector(
              onTap:  () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Status(),));
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
                      child: CustomText(text: 'Book These Seats',size: 16.sp,
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
