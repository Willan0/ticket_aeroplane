
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/utils/app_layout.dart';

import '../utils/app_style.dart';
import '../widgets/half_circle_left.dart';
import '../widgets/half_circle_right.dart';
import '../widgets/rounded_container.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> tickets ;
   const TicketView({Key? key,required this.tickets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin:  EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*
            showing the blue part of the card/ticket
             */
            Container(
              margin:  EdgeInsets.only(top: AppLayout.getHeight(16)),
              padding:  EdgeInsets.all(AppLayout.getHeight(16)),
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(21)),topRight: Radius.circular(AppLayout.getHeight(21))),
                color: const Color(0xff526799),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:  [
                      Text(tickets['from']['code'],style: Style.headingLineStyle3.copyWith(color: Colors.white),),
                      Expanded(child: Container(),),
                      const RoundedContainer(),
                      Expanded(
                        child: Stack(
                          children:[ 
                            SizedBox(
                            height: AppLayout.getHeight(20),
                            child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraint) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: List.generate((constraint.constrainWidth()/6).ceil(), (index) =>  SizedBox(
                                    width: AppLayout.getWidth(3),height: AppLayout.getHeight(1),child: const DecoratedBox(decoration: BoxDecoration(
                                    color: Colors.white
                                  ),),
                                  )),
                                );
                              },
                            ),
                          ),
                            Center(child:Transform.rotate(angle: 1.5,child:const Icon(Icons.local_airport_rounded,color: Colors.white,) ,) ,)
                          ],
                        ),
                      ),
                      const RoundedContainer(),
                      Expanded(child: Container(),),
                      Text(tickets['to']['code'],style: Style.headingLineStyle3.copyWith(color: Colors.white))
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width:AppLayout.getWidth(100),child: Text(tickets['from']['name'],style: Style.headingLineStyle4.copyWith(color: Colors.white),)),
                      Text(tickets['flying_time'],style: Style.headingLineStyle4.copyWith(color: Colors.white),),
                      SizedBox(width:100,child: Text(tickets['to']['name'],style: Style.headingLineStyle4.copyWith(color: Colors.white),textAlign: TextAlign.end,))
                    ],
                  )
                ],
              ),
            ),
            /*
            showing the orange part of the card/ticket
             */
            Container(
              height: AppLayout.getHeight(20),
              decoration: BoxDecoration(
                color: Style.orangeColor,
              ),
              child:
                  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    const HalfCircleLeft(),
                    Expanded(
                      child: LayoutBuilder(builder: (BuildContext context,  BoxConstraints constraints) {
                        return Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            direction: Axis.horizontal,
                          children: List.generate((constraints.constrainWidth()/6).floor(), (index) =>
                          const Text('-',style: TextStyle(color: Colors.white),)),
                        );
                      },),
                    ),
                    const HalfCircleRight(),
                  ]),
              ),
            /*
            the bottom part of the card/ticket
             */
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Style.orangeColor,
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                       Text(tickets['date'],style:Style.headingLineStyle3.copyWith(color: Colors.white) ,),
                       Text(tickets['departure_time'],style:Style.headingLineStyle3.copyWith(color: Colors.white) ,),
                       Text('${tickets["number"]}',style:Style.headingLineStyle3.copyWith(color: Colors.white) ,)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      SizedBox(width:AppLayout.getWidth(100),child: Text('Date',textAlign: TextAlign.start,style:Style.headingLineStyle4.copyWith(color: Colors.white) ,)),
                      SizedBox(width:AppLayout.getWidth(100),child: Text('Departure Time',textAlign: TextAlign.start,style:Style.headingLineStyle4.copyWith(color: Colors.white) ,)),
                      SizedBox(width:AppLayout.getWidth(50),child: Text('No',textAlign:TextAlign.end,style:Style.headingLineStyle4.copyWith(color: Colors.white) ,))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
