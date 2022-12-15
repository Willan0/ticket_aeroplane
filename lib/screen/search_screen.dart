
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/screen/search_text.dart';
import 'package:ticket/utils/app_layout.dart';
import '../utils/app_style.dart';

class Search extends StatelessWidget {

  const Search({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
final size = AppLayout.getSize(context);
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
          Container(
              height: AppLayout.getHeight(50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ElevatedButton(onPressed: (){}, child: const Text("Find Tickets",))
          ),
          Gap(AppLayout.getHeight(35)),
          Container(
            margin: EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text("Upcoming Flights",style: Style.headingLineStyle2,),
                InkWell(onTap: (){},child: Text('View all',style: Style.textStyle,))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width*0.41,
                height: AppLayout.getHeight(440),
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10),vertical: AppLayout.getHeight(10)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 1,
                      blurRadius: 1
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(250),
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        image: const DecorationImage(fit:BoxFit.cover,image: AssetImage('assets/images/sit.jpg'))
                      ),
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Text("20% discount on the early booking of this flight, Don't miss out this chance ",style: Style.headingLineStyle3.copyWith(color: Colors.black, ),)
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      Container(
                        width: size.width*0.45,
                        height: AppLayout.getHeight(215),
                        decoration: BoxDecoration(
                          color: const Color(0xff3ab8b8),
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15),vertical: AppLayout.getHeight(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Discount\nfor survey',style: Style.headingLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                            Text('Take the survey about our services and get Discount',style: Style.headingLineStyle4.copyWith(color: Colors.white,fontSize: 18),),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -50,
                        top: -50,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width:18,color: const Color(0xff189999))
                          ),
                        ),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width*0.45,
                    height: AppLayout.getHeight(210),
                    decoration: BoxDecoration(
                      color: const Color(0xffec6545),
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15),vertical: AppLayout.getHeight(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(textAlign: TextAlign.center,'Take Love',style: Style.headingLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                        Gap(AppLayout.getHeight(10)),
                        RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '😘',
                                  style: TextStyle(fontSize: 35)
                                ),
                                TextSpan(
                                    text: '😍',
                                    style: TextStyle(fontSize: 45)
                                ),
                                TextSpan(
                                    text: '🥰',
                                    style: TextStyle(fontSize: 35)
                                ),
                              ]
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
