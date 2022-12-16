import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_layout.dart';
import 'app_style.dart';

class DoubleCircle extends StatelessWidget {
  const DoubleCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
        decoration:  BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width:AppLayout.getHeight(2),color: Style.textColor),
        ),
        child: CircleAvatar(
          maxRadius: 3.5,
          backgroundColor: Style.textColor,
        ),
      );

  }
}
