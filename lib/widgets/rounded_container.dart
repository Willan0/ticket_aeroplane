
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final bool ?isBlue;
  const RoundedContainer({Key? key,this.isBlue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(width: 2.5,color:isBlue==null?Colors.white:Colors.blueAccent)
      ),
    );
  }
}
