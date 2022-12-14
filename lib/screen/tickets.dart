
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/screen/ticket_view.dart';
import 'package:ticket/utils/ticket_info.dart';
import 'package:barcode_widget/barcode_widget.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';
import '../utils/dot_line.dart';
import '../utils/double_circle.dart';

class Tickets extends StatelessWidget {
  const Tickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: Stack(
        children: [
          ListView(
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
            Gap(AppLayout.getHeight(20)),
            TicketView(tickets: ticketList[0],isColor: true),
            Container(width:size.width/0.85,height:AppLayout.getHeight(1),decoration:const BoxDecoration(color:Colors.white),child: const DotLine()),
            Container(
              width:size.width*0.85,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20),horizontal: AppLayout.getWidth(10)),
              decoration: const BoxDecoration(
                color: Colors.white
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Flutter Dash',style: Style.headingLineStyle5.copyWith(color: Colors.grey.shade700),),
                          Text('Passenger',style: Style.headingLineStyle4.copyWith(color: Colors.grey.shade500),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('5221 478566',style: Style.headingLineStyle5.copyWith(color: Colors.grey.shade700),),
                          Text('Passport',style: Style.headingLineStyle4.copyWith(color: Colors.grey.shade500),)
                        ],
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  const DotLine(),
                  Gap(AppLayout.getHeight(15)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('0055 444 771417',style: Style.headingLineStyle5.copyWith(color: Colors.grey.shade700),),
                          Text('Number of E-ticket',style: Style.headingLineStyle4.copyWith(color: Colors.grey.shade500),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('B25G28',style: Style.headingLineStyle5.copyWith(color:Colors.grey.shade700),),
                          Text('Book code',style: Style.headingLineStyle4.copyWith(color: Colors.grey.shade500),)
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(width:size.width/0.85,height:AppLayout.getHeight(1),decoration:const BoxDecoration(color:Colors.white),child: const DotLine()),
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(16),horizontal: AppLayout.getWidth(8)),
              decoration: const BoxDecoration(
                color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children:  [
                          Image.asset('assets/images/visa.png',scale: 11,),
                          Text(' *** 24642',style: Style.headingLineStyle5.copyWith(color:Colors.grey.shade700),),
                        ],
                      ),
                      Text('Payment method  ',style: Style.headingLineStyle4.copyWith(color: Colors.grey.shade500),)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('\$ 249.99',style: Style.headingLineStyle5.copyWith(color: Colors.grey.shade700),),
                      Text('Price',style: Style.headingLineStyle4.copyWith(color: Colors.grey.shade500),)
                    ],
                  )
                ],
              ),
            ),
            /*
            bar code
             */
            Container(
              width: size.width*0.6,
              height: AppLayout.getHeight(100),
              padding: EdgeInsets.all(AppLayout.getHeight(10)),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(16),bottomLeft: Radius.circular(16))
              ),
              child: BarcodeWidget(
                  data: 'https://github.com/martinovovo',
                  barcode: Barcode.code128(),
                  color: Style.textColor,
                  width: double.infinity,
                  drawText: false,
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: AppLayout.getWidth(16)),
              child: TicketView(tickets: ticketList[0]),
            ),
          ],
        ),
          Positioned(
            left: AppLayout.getHeight(10),
            top: AppLayout.getHeight(254),
            child: const DoubleCircle(),
          ),
          Positioned(
            right: AppLayout.getHeight(10),
            top: AppLayout.getHeight(254),
            child: const DoubleCircle(),
          )
       ]
      ),
    );
  }
}
