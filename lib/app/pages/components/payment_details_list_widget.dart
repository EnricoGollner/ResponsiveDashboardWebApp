import 'package:flutter/material.dart';
import 'package:responsive_web_app/app/config/size_config.dart';
import 'package:responsive_web_app/app/mock/data.dart';
import 'package:responsive_web_app/app/pages/components/payment_list_tile.dart';
import 'package:responsive_web_app/app/style/colors.dart';
import 'package:responsive_web_app/app/style/style.dart';

class PaymentDetailsListWidget extends StatelessWidget {
  const PaymentDetailsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(height: SizeConfig.blockSizeVertical * 5),
      Container(
        decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(30), boxShadow: [
          BoxShadow(
            color: Colors.grey[400]!,
            blurRadius: 15.0,
            offset: const Offset(
              10.0,
              15.0,
            ),
          )
        ]),
        child: Image.asset('assets/card.png'),
      ),
      SizedBox(height: SizeConfig.blockSizeVertical * 5),
      const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PrimaryText(
              text: 'Recent Activities', size: 18, fontWeight: FontWeight.w800),
          PrimaryText(
            text: '02 Mar 2021',
            size: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.secondary,
          ),
        ],
      ),
      SizedBox(
        height: SizeConfig.blockSizeVertical * 2,
      ),
      Column(
        children: List.generate(
          recentActivities.length,
          (index) => PaymentListTile(
              iconPath: recentActivities[index]["icon"]!,
              label: recentActivities[index]["label"]!,
              amount: recentActivities[index]["amount"]!,
          ),
        ),
      ),
      SizedBox(
        height: SizeConfig.blockSizeVertical * 5,
      ),
      const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PrimaryText(
              text: 'Upcoming Payments', size: 18, fontWeight: FontWeight.w800),
          PrimaryText(
            text: '02 Mar 2021',
            size: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.secondary,
          ),
        ],
      ),
      SizedBox(height: SizeConfig.blockSizeVertical * 2),
      Column(
        children: List.generate(
          upcomingPayments.length,
          (index) => PaymentListTile(
            iconPath: upcomingPayments[index]["icon"]!,
            label: upcomingPayments[index]["label"]!,
            amount: upcomingPayments[index]["amount"]!,
          ),
        ),
      ),
    ]);
  }
}
