import 'package:flutter/material.dart';
import 'package:homework2/utils/app_colors.dart';
import 'package:homework2/utils/app_text_styles.dart';

class ItemNoti extends StatelessWidget {
  int? num;
  ItemNoti({Key? key, this.num}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.05,
      height: size.height * 0.05,
      decoration: const ShapeDecoration(
          color: AppColor.backroundNoti,
          shape: CircleBorder(side: BorderSide(width: 2, color: Colors.white))),
      child: Center(
          child: Text(num == null ? '' : num.toString(), style: AppStyles.h6)),
    );
  }
}
