
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*.7,
      height: AppLayout.getHeight(40),
      decoration:  BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
      ),
      child: Row(
        children: [
          Gap(AppLayout.getWidth(10)),
          Icon(icon,color: const Color(0xffbfc2df),),
          Gap(AppLayout.getWidth(10)),
          Text(text,style: Style.headingLineStyle3,)
        ],
      ),
    );
  }
}
