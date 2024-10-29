import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_web_app/app/style/colors.dart';

class IconSideMenu extends StatelessWidget {
  final String svgIconPath;
  final void Function() onPressed;

  const IconSideMenu(
      {super.key, required this.svgIconPath, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: const ButtonStyle(
        shape: WidgetStatePropertyAll(CircleBorder()),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      icon: SvgPicture.asset(
        svgIconPath,
        width: 25,
        colorFilter: const ColorFilter.mode(AppColors.iconGray, BlendMode.srcIn),
      ),
      onPressed: onPressed,
    );
  }
}
