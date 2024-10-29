import 'package:flutter/material.dart';
import 'package:responsive_web_app/app/config/responsive.dart';
import 'package:responsive_web_app/app/style/colors.dart';
import 'package:responsive_web_app/app/style/style.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          child: Column(
            children: [
              PrimaryText(
                  text: 'Dashboard', size: 30, fontWeight: FontWeight.w800),
              PrimaryText(
                text: 'Payments updates',
                size: 16,
                color: AppColors.secondary,
              ),
            ],
          ),
        ),
        const Spacer(flex: 1),
        Expanded(
          flex: Responsive.isDesktop(context) ? 1 : 2,
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.white,
              contentPadding: const EdgeInsets.only(left: 40, right: 5),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: AppColors.white),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: AppColors.white)),
              prefixIcon: const Icon(
                Icons.search,
                color: AppColors.black,
              ),
              hintText: 'Search',
              hintStyle: const TextStyle(
                color: AppColors.secondary,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
