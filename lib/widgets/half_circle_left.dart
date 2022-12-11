
import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class HalfCircleLeft extends StatelessWidget {
  const HalfCircleLeft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Style.bgColor,
           borderRadius: const BorderRadius.only(topRight: Radius.circular(10),bottomRight:Radius.circular(10))
        ),
      ),
    );
  }
}
