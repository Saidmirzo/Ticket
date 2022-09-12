
import 'package:flutter/material.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_decorations.dart';
import '../../config/constants/app_text_styles.dart';
import '../../config/constants/ticket_status.dart';

class TicketComponent extends StatelessWidget {
  const TicketComponent({
    Key? key,
    required this.id,
    required this.ticketStatus,
    this.category,
    this.time,
    this.price,
  }) : super(key: key);
  final String id;
  final TicketStatus ticketStatus;
  final String? category;
  final String? time;
  final String? price;

  _statusColor(TicketStatus ticketStatus) {
    switch (ticketStatus) {
      case TicketStatus.activated:
        return AppColors.activatedDialogColor;
      case TicketStatus.notActivated:
        return AppColors.errorDialogColor;
      case TicketStatus.notFoundInDB:
        return AppColors.warningDialogColor;
      case TicketStatus.waiting:
        return AppColors.bgColor;
      default:
    }
  }

  _statusText(TicketStatus ticketStatus) {
    switch (ticketStatus) {
      case TicketStatus.activated:
        return 'Активирован';
      case TicketStatus.notActivated:
        return 'Не активирован';
      case TicketStatus.notFoundInDB:
        return 'ID не найден в БД';
      case TicketStatus.waiting:
        return 'Ожидает подтверждения';
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 18),
      decoration: AppDecorations.defDecor.copyWith(
        color: ticketStatus != TicketStatus.waiting ? AppColors.bgColor : AppColors.secondaryTextColor,
      ),
      child: Column(
        children: [
          // ticket id and status
          Padding(
            padding: const EdgeInsets.only(bottom: 23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // id
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ID',
                      style: AppTextStyles.h5.copyWith(
                        color: ticketStatus == TicketStatus.waiting ? AppColors.bgColor : AppColors.secondaryTextColor,
                      ),
                    ),
                    Text(
                      id,
                      style: AppTextStyles.b2Bold.copyWith(
                        color: ticketStatus == TicketStatus.waiting ? AppColors.bgColor : AppColors.primaryTextColor,
                      ),
                    ),
                  ],
                ),
                // ticket status
                Container(
                  width: MediaQuery.of(context).size.width / 2.3,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: AppDecorations.defDecor.copyWith(color: _statusColor(ticketStatus)),
                  child: Text(
                    _statusText(ticketStatus),
                    style: AppTextStyles.h5,
                  ),
                ),
              ],
            ),
          ),

          // ticket type, time, price
          ticketStatus != TicketStatus.waiting
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // category
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Категория',
                          style: AppTextStyles.h5.copyWith(color: AppColors.secondaryTextColor),
                        ),
                        Text(
                          'Входной билет',
                          style: AppTextStyles.h4,
                        ),
                      ],
                    ),
                    // time
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Время',
                          style: AppTextStyles.h5.copyWith(color: AppColors.secondaryTextColor),
                        ),
                        Text(
                          '12.00',
                          style: AppTextStyles.h4,
                        ),
                      ],
                    ),
                    // price
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Цена',
                          style: AppTextStyles.h5.copyWith(color: AppColors.secondaryTextColor),
                        ),
                        Text(
                          '500 ₽',
                          style: AppTextStyles.h4,
                        ),
                      ],
                    ),
                  ],
                )
              : Text(
                  'ID билета будет активирован при подключении к интернет-соединению',
                  style: AppTextStyles.h4.copyWith(color: AppColors.bgColor),
                ),
        ],
      ),
    );
  }
}
