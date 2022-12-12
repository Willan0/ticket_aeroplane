
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/utils/app_layout.dart';

import '../utils/app_style.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        children: [
          Gap(AppLayout.getHeight(30)),
          Text('What are\n you looking for?',style: Style.headingLineStyle1.copyWith(fontSize: 35),)
        ],
      ),
    );
  }
}
