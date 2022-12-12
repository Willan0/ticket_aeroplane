import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/screen/ticket_view.dart';
import 'package:ticket/utils/app_layout.dart';
import 'package:ticket/utils/app_style.dart';

import '../utils/ticket_info.dart';
import 'hotel_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text('Good Morning',style: Style.headingLineStyle3,),
                        const Gap(5),
                        Text('Book Tickets',style: Style.headingLineStyle1,),
                      ],
                    ),
                    Container(
                      width: AppLayout.getWidth(50),
                      height: AppLayout.getHeight(50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/img1.png'))),
                    )
                  ],
                ),
                const Gap(24),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  decoration:  BoxDecoration(
                    color: const Color(0xfff4f6fd),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children:  [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,color: Colors.amber,),
                      Text('Search...',style: Style.headingLineStyle4,)
                    ],
                  ),
                ),
                const Gap(42),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                     Text("Upcoming Flights",style: Style.headingLineStyle2,),
                     InkWell(onTap: (){},child: Text('View all',style: Style.textStyle,))
                  ],
                )
              ],
            ),
          ),
          SingleChildScrollView(
              padding:const EdgeInsets.only(left: 20),
              scrollDirection: Axis.horizontal,
              child:  Row(
                children: ticketList.map((e) => TicketView(tickets: e)).toList(),
              ),
          ),
          Container(
            margin: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text("Hotels",style: Style.headingLineStyle2,),
                InkWell(onTap: (){},child: Text('View all',style: Style.textStyle,))
              ],
            ),
          ),
          SingleChildScrollView(
              padding:const EdgeInsets.only(left: 20),
              scrollDirection: Axis.horizontal,
              child:  Row(children:[
                HotelScreen("assets/images/one.png","London","\$ 400/night"),
                HotelScreen("assets/images/two.png","Canada","\$ 500/night"),
                HotelScreen("assets/images/three.png","U.S.A","\$ 600/night"),
                HotelScreen("assets/images/hotel.jpg","Japan","\$ 800/night")
              ])
          ),
        ],
      ),
    );
  }
}
