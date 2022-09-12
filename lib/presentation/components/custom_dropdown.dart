
import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_decorations.dart';
import '../../config/constants/app_text_styles.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: AppDecorations.defDecor.copyWith(color: Colors.transparent),
      margin: const EdgeInsets.symmetric(horizontal: 14),
      child: TextDropdownFormField(
        options: list,
        dropdownHeight: list.length * 55,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: const BorderSide(color: AppColors.secondaryTextColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: const BorderSide(color: AppColors.secondaryTextColor),
          ),
          hintText: list.first,
          hintStyle: AppTextStyles.h4,
          suffixIcon: const Icon(
            CupertinoIcons.arrowtriangle_down_fill,
            size: 18,
            color: AppColors.secondaryTextColor,
          ),
        ),
      ),
    );
  }
}
