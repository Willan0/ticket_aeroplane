
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/utils/app_layout.dart';

import '../utils/app_style.dart';

class HotelScreen extends StatelessWidget {
  String ?url,place,price;
HotelScreen(this.url,this.place,this.price,{super.key});
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height:AppLayout.getHeight(360),
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      decoration: BoxDecoration(
          boxShadow:  [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 5,
            ),],
        borderRadius: BorderRadius.circular(24),
        color: Style.primaryColor
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Style.primaryColor,
                image:  DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(url!))),
          ),
          const Gap(10),
          Text('Open Space',style: Style.headingLineStyle2.copyWith(color: Style.kakiColor),),
          const Gap(8),
          Text(place!,style: Style.headingLineStyle2.copyWith(color: Colors.white),),
          const Gap(5),
          Text(price!,style: Style.headingLineStyle2.copyWith(color: Style.kakiColor),),
        ],
      ),
    );
  }
}
