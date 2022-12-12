
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/screen/search_text.dart';
import 'package:ticket/utils/app_layout.dart';

import '../utils/app_style.dart';

class Search extends StatelessWidget {

  const Search({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text('What are\nyou looking for?',
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
                  child: Text('AirLine Tickets',style: Style.headingLineStyle4.copyWith(color: Colors.black),),
                ),
                Container(
                  height: AppLayout.getHeight(40),
                  alignment: Alignment.center,
                  child: Text('Hotels',style: Style.headingLineStyle4.copyWith(color: Colors.black),),
                )
              ],
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(icon:Icons.flight_takeoff_rounded ,  text: "Departure"),
          Gap(AppLayout.getHeight(15)),
          const AppIconText(icon:Icons.flight_land_rounded ,  text: "Arrival"),
          Gap(AppLayout.getHeight(15)),
          ElevatedButton(onPressed: (){}, child: const Text("Find Tickets"))
        ],
      ),
    );
  }
}
