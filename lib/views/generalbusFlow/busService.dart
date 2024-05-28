import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/views/generalbusFlow/selectRoute.dart';

import '../../widgets/customText.dart';

class BusService extends StatefulWidget {
  const BusService({super.key});

  @override
  State<BusService> createState() => _BusServiceState();
}

class _BusServiceState extends State<BusService> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedValue;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 8,right: 8,top: 62).r,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(height: 25.h,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15).r,
                  child: Container(
                    height: 75.h,
                    width: 375.w
                    ,
                    child: Row(
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: 'Select Time',color: Colors.black,size: 14.sp,weight: FontWeight.w600,),
                            SizedBox(height: 9.h,),
                            Container(
                              height: 45.h,
                              width: 175.w,
                              decoration: BoxDecoration(
                                color: Colors.cyan.shade400,
                                borderRadius: BorderRadius.circular(5).r,
                                border: Border.all(width: 1.5.w,color: Colors.blue.shade500)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12,right: 7).r,
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(text: '09:52 AM',size: 14.sp,weight: FontWeight.w600,color: Colors.blue,),
                                    Icon(Icons.timer_outlined,color: Colors.blue,),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 20.w,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: 'Select Date',color: Colors.black,size: 14.sp,weight: FontWeight.w600,),
                            SizedBox(height: 9.h,),
                            Container(
                              height: 45.h,
                              width: 175.w,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5).r,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12,right: 7).r,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(text: 'Feb - 02 - 2024',size: 14.sp,weight: FontWeight.w600,color: Colors.grey,),
                                    Icon(Icons.calendar_today_outlined,color: Colors.grey,),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25.h,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15).r,
                  child: Container(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    CustomText(text: 'Select Service Company',weight: FontWeight.w700,size: 14.sp,),
                      SizedBox(height: 10.h,),
                      DropdownButtonFormField<String>(
                        
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(15).r,
                          hintText: 'Company Name',
                          filled: true,
                          fillColor: Colors.grey.shade300,
                          focusedBorder:OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15).r,
                          ) ,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15).r,
                          ),
                        ),
                        value: _selectedValue,
                        items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            _selectedValue = newValue;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select an option';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20.h,),
                      CustomText(text: 'Select Service Company',weight: FontWeight.w700,size: 14.sp,),
                      SizedBox(height: 10.h,),
                      DropdownButtonFormField<String>(

                        decoration: InputDecoration(

                          contentPadding: EdgeInsets.all(15).r,
                          hintText: 'Company Name',
                          filled: true,
                          fillColor: Colors.grey.shade300,
                          focusedBorder:OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15).r,
                          ) ,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15).r
                            ,

                          ),
                        ),
                        value: _selectedValue,
                        items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            _selectedValue = newValue;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select an option';
                          }
                          return null;
                        },
                      ),
                    ],
                    ),
                  ),
                ),
                SizedBox(height: 45.h,),
                GestureDetector(
                  onTap:  () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SelectRoute(),));
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
        ),
      ),
    );
  }
}
