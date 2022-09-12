import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/constants/app_decorations.dart';

class DialogComponent extends StatelessWidget {
  const DialogComponent({
    Key? key,
    this.icon,
    required this.dialogTitle,
    required this.dialogBody,
    required this.bgColor,
  }) : super(key: key);
  final String? icon;
  final Widget dialogTitle;
  final Widget dialogBody;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.symmetric(vertical: icon != null ? 27 : 47, horizontal: 47),
      decoration: AppDecorations.defDecor.copyWith(color: bgColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon != null ? SvgPicture.asset(icon!) : const SizedBox.shrink(),
          Padding(padding: EdgeInsets.only(top: icon != null ? 12 : 0, bottom: 12), child: dialogTitle),
          dialogBody
        ],
      ),
    );
  }
}
