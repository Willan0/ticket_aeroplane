
import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class HalfCircleRight extends StatelessWidget {
  const HalfCircleRight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Style.bgColor,
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
        ),
      ),
    );
  }
}
