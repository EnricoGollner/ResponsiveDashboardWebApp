import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_web_app/app/style/colors.dart';
import 'package:responsive_web_app/app/style/style.dart';

class PaymentListTile extends StatelessWidget {
  final String iconPath;
  final String label;
  final String amount;

  const PaymentListTile({
    super.key,
    required this.iconPath,
    required this.label,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 0, right: 20),
      visualDensity: VisualDensity.standard,
      leading: Container(
        width: 50,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SvgPicture.asset(
          iconPath,
          width: 20,
        ),
      ),
      title: PrimaryText(text: label, size: 14, fontWeight: FontWeight.w500),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const PrimaryText(
            text: 'Successfully',
            size: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.secondary,
          ),
          PrimaryText(text: amount, size: 16, fontWeight: FontWeight.w600),
        ],
      ),
      onTap: () => debugPrint('tap'),
      selected: true,
    );
  }
}
