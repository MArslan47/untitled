import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/customText.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  int _currentStep = 0;

  List<Map<String, String>> _stations = [
    {
      'station': 'Faizabad Station',
      'arrivalTime': '05:00 PM',
      'nextStationTime': 'Starting Point',
    },
    {
      'station': 'Shamsabad Station',
      'arrivalTime': '05:10 AM',
      'nextStationTime': '3 minutes stay',
    },
    {
      'station': 'Chandni Chowk Stop',
      'arrivalTime': '05:20 AM',
      'nextStationTime': '2 minutes stay',
    },
    {
      'station': 'Liaqat Bagh',
      'arrivalTime': '05:30 AM',
      'nextStationTime': '5 minutes stay',
    },
    {
      'station': 'Sadar Station',
      'arrivalTime': '05:40 AM',
      'nextStationTime': 'Final Destination',
    },
  ];

  void _onStepTapped(int step) {
    setState(() {
      _currentStep = step;
    });
  }

  List<Step> _buildSteps() {
    return _stations.map((station) {
      int index = _stations.indexOf(station);
      bool isFirst = index == 0;
      bool isLast = index == _stations.length - 1;
      TextStyle titleStyle = TextStyle(color: isFirst || isLast ? Colors.blue : Colors.black);
      return Step(
        title: Text(
          station['station']!,
          style: titleStyle,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(station['arrivalTime']!),
            Text(station['nextStationTime']!),
          ],
        ),
        content: Container(),
        isActive: _currentStep >= _stations.indexOf(station),
        state: _currentStep == _stations.indexOf(station) ? StepState.editing : StepState.complete,
      );
    }).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 62,bottom: 50).r,
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
            SizedBox(height: 25.h),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30).r,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: 'Current  status for this route',weight: FontWeight.w900,size: 18.sp,),
                  SizedBox(width: 30.w,),
                  Image(image: AssetImage('assets/images/daewoo.png'),height: 44.h,width: 64,),
                ],
              ),
            ),
            Expanded(
              child: Theme(
                data: ThemeData(
                  colorScheme: ColorScheme.light(
                    primary: Colors.blue,
                  ),
                ),
                child: Stepper(
                  currentStep: _currentStep,
                  type: StepperType.vertical,
                  onStepTapped: _onStepTapped,
                  steps: _buildSteps(),
                  stepIconBuilder: (stepIndex, stepState) {
                    return Container();
                  },
                  controlsBuilder: (BuildContext context, ControlsDetails details) {
                    return Container(); // Removes the default continue and cancel buttons
                  },
                ),
              ),
            ),
            Padding(
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
                    child: CustomText(text: 'Optional Button',size: 16.sp,
                      weight: FontWeight.w500,color: Colors.white,),
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
