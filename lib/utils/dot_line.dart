
import 'package:flutter/material.dart';

import 'app_layout.dart';

class DotLine extends StatelessWidget {
  const DotLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10)),
      child: SizedBox(
        child: LayoutBuilder(builder: (p0, p1) {
          return Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate((p1.constrainWidth()/6).ceil(), (index) => SizedBox(width: 3,height:1,child: Container(decoration:  BoxDecoration(color: Colors.grey.shade300),),))
          );
        },),
      ),
    );
  }
}
