import 'package:flutter/material.dart';
import 'package:tickets/config/constants/app_colors.dart';
import 'package:tickets/config/constants/app_text_styles.dart';
import 'package:tickets/config/constants/ticket_status.dart';

import '../../../config/constants/assets.dart';
import '../../../config/constants/local_data.dart';
import '../../components/custom_dropdown.dart';
import '../../components/dialog_component.dart';
import '../../components/ticket_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomDropdown(list: list),
          const SizedBox(height: 30),
          DialogComponent(
            icon: Assets.icons.errorRounded,
            dialogTitle: Text(
              'Билет уже активирован',
              style: AppTextStyles.h3.copyWith(color: AppColors.errorColor),
              textAlign: TextAlign.center,
            ),
            dialogBody: Text(
              'Данные о билете\n не обнаружены в базе данных',
              style: AppTextStyles.h5.copyWith(color: AppColors.errorColor),
              textAlign: TextAlign.center,
            ),
            bgColor: AppColors.errorDialogColor,
          ),
          const SizedBox(height: 30),
          const TicketComponent(
            id: '76558392022',
            ticketStatus: TicketStatus.activated,
            category: 'Входной билет',
            time: '12.00',
            price: '500 ₽',
          ),
        ],
      ),
    );
  }
}
