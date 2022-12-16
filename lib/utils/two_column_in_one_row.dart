import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:ticket/utils/app_layout.dart';

import 'app_style.dart';

class TowInOne extends StatelessWidget {
  final String miles;
  final String country;
  const TowInOne({Key? key, required this.miles, required this.country}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(miles,style: Style.headingLineStyle3.copyWith(color: Style.textColor),),
            Gap(AppLayout.getHeight(5)),
            Text('Miles',style: Style.headingLineStyle5),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(country,style: Style.headingLineStyle3.copyWith(color: Style.textColor),),
            Gap(AppLayout.getHeight(5)),
            Text('Received From',style: Style.headingLineStyle5),
          ],
        )
      ],
    );
  }
}
