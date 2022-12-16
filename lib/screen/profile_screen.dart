import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/utils/app_layout.dart';

import '../utils/app_style.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20),vertical: AppLayout.getWidth(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: AppLayout.getWidth(86),
                height: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                  image: const DecorationImage(image: AssetImage('assets/images/img1.png'))
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Book Tickets',style: Style.headingLineStyle1,),
                  Text('New-York',style: Style.headingLineStyle5.copyWith(color: Colors.grey.shade500),),
                  Gap(AppLayout.getHeight(5)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                      color:  Colors.white,
                    ),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(3),horizontal: AppLayout.getWidth(5)),
                    child: Row(
                      children: [
                          Container(
                            padding:EdgeInsets.all(AppLayout.getHeight(2)),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff526799),
                            ),
                            child:const Icon(FluentSystemIcons.ic_fluent_shield_filled,color: Colors.white,size: 15,),
                          ),
                         Gap(AppLayout.getHeight(5)),
                         Text('Premium Status',style: Style.headingLineStyle5.copyWith(color: const Color(0xff526799)),)
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              InkWell(onTap:()=>print("On Tapped"),child: const Icon(Icons.edit,color: Colors.blue,size: 20,)),

            ],
          ),
          Gap(AppLayout.getHeight(35)),
          Stack(
            children: [
              Container(
                width: size.width/0/82,
                height:AppLayout.getHeight(80),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                color: Style.primaryColor
              ),
            ),
              Positioned(
                right: -50,
                top: -50,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width:18,color: const Color(0xff116aa8))
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Row(
                  children:[
                    Container(
                      padding: EdgeInsets.all(AppLayout.getHeight(10)),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                      ),
                      child: const Icon(FluentSystemIcons.ic_fluent_lightbulb_circle_filled,size: 34,)
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("You've got a new reward",style: Style.headingLineStyle3.copyWith(color: Colors.white),),
                        Text("You've 150 flights in a year",style: Style.headingLineStyle5.copyWith(color: Colors.white70,fontSize: 14),)
                      ],
                    )
                  ],
                ),
              )
            ]
          )
        ],
      ),
    );
  }
}
