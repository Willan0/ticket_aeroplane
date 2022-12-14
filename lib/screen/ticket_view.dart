
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/utils/app_layout.dart';

import '../utils/app_style.dart';
import '../widgets/half_circle_left.dart';
import '../widgets/half_circle_right.dart';
import '../widgets/rounded_container.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> tickets ;
  final bool ?isColor;
  final bool ?isBlue;
   const TicketView({Key? key,required this.tickets,this.isColor,this.isBlue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(182),
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
                color: isColor==null ?const Color(0xff526799):Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:  [
                      Text(tickets['from']['code'],style: isColor==null ?Style.headingLineStyle3.copyWith(color: Colors.white):Style.headingLineStyle3,),
                      Expanded(child: Container(),),
                      const RoundedContainer(isBlue:true,),
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
                                    width: AppLayout.getWidth(3),height: AppLayout.getHeight(1),child:  DecoratedBox(decoration: BoxDecoration(
                                    color: isColor==null?Colors.white:Colors.grey.shade400
                                  ),),
                                  )),
                                );
                              },
                            ),
                          ),
                            Center(child:Transform.rotate(angle: 1.5,child: Icon(Icons.local_airport_rounded,color: isColor==null?Colors.white:Colors.blue,) ,) ,)
                          ],
                        ),
                      ),
                      const RoundedContainer(isBlue: true,),
                      Expanded(child: Container(),),
                      Text(tickets['to']['code'],style: isColor==null ?Style.headingLineStyle3.copyWith(color: Colors.white):Style.headingLineStyle3)
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width:AppLayout.getWidth(100),child: Text(tickets['from']['name'],style: isColor==null ?Style.headingLineStyle4.copyWith(color: Colors.white):Style.headingLineStyle4,)),
                      Text(tickets['flying_time'],style: isColor==null ?Style.headingLineStyle4.copyWith(color: Colors.white):Style.headingLineStyle4,),
                      SizedBox(width:100,child: Text(tickets['to']['name'],style: isColor==null ?Style.headingLineStyle4.copyWith(color: Colors.white):Style.headingLineStyle4,textAlign: TextAlign.end,))
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
                color: isColor==null?Style.orangeColor:Colors.white,
              ),
              child:
                  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    const HalfCircleLeft(isChecked: true,),
                    Expanded(
                      child: LayoutBuilder(builder: (BuildContext context,  BoxConstraints constraints) {
                        return Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            direction: Axis.horizontal,
                          children: List.generate((constraints.constrainWidth()/6).floor(), (index) =>
                              Text('-',style: TextStyle(color: isColor==null?Colors.white:Colors.grey.shade400),)),
                        );
                      },),
                    ),
                    const HalfCircleRight(isChecked: true,),
                  ]),
              ),
            /*
            the bottom part of the card/ticket
             */
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor==null?Style.orangeColor:Colors.white,
                borderRadius: isColor==null? const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)):BorderRadius.only(bottomLeft: Radius.circular(0),bottomRight: Radius.circular(0)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                       Text(tickets['date'],style:isColor==null ?Style.headingLineStyle3.copyWith(color: Colors.white) :Style.headingLineStyle3,),
                       Text(tickets['departure_time'],style:isColor==null ?Style.headingLineStyle3.copyWith(color: Colors.white) :Style.headingLineStyle3,),
                       Text('${tickets["number"]}',style:isColor==null ?Style.headingLineStyle3.copyWith(color: Colors.white):Style.headingLineStyle3 ,)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      SizedBox(width:AppLayout.getWidth(100),child: Text('Date',textAlign: TextAlign.start,style:isColor==null ?Style.headingLineStyle4.copyWith(color: Colors.white) :Style.headingLineStyle4,)),
                      SizedBox(width:AppLayout.getWidth(100),child: Text('Departure Time',textAlign: TextAlign.start,style:isColor==null ?Style.headingLineStyle4.copyWith(color: Colors.white) :Style.headingLineStyle4 ,)),
                      SizedBox(width:AppLayout.getWidth(50),child: Text('No',textAlign:TextAlign.end,style:isColor==null ?Style.headingLineStyle4.copyWith(color: Colors.white) :Style.headingLineStyle4 ,))
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
