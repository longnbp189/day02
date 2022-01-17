import 'package:flutter/material.dart';
import 'package:homework2/utils/app_colors.dart';

class ItemOnline extends StatelessWidget {
  const ItemOnline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.045,
        height: size.height * 0.045,
        decoration: const ShapeDecoration(
            color: AppColor.onlineIcon,
            shape:
                CircleBorder(side: BorderSide(width: 2, color: Colors.white))));
  }
}
