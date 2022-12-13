
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class Tickets extends StatelessWidget {
  const Tickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20),horizontal: AppLayout.getWidth(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text('Tickets',
            style: Style.headingLineStyle1.copyWith(fontSize: 35,color: Colors.grey.shade600),
          ),
          Gap(AppLayout.getHeight(20)),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                color: const Color(0xfff4f6fd)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  [
                Container(
                  height: AppLayout.getHeight(40),
                  alignment: Alignment.center,
                  child: Text('Upcoming',style: Style.headingLineStyle4.copyWith(color: Colors.black),),
                ),
                Container(
                  height: AppLayout.getHeight(40),
                  alignment: Alignment.center,
                  child: Text('Previous',style: Style.headingLineStyle4.copyWith(color: Colors.black),),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
