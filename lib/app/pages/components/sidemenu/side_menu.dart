import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_web_app/app/config/size_config.dart';
import 'package:responsive_web_app/app/pages/components/sidemenu/icon_side_menu.dart';
import 'package:responsive_web_app/app/style/colors.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        decoration: const BoxDecoration(color: AppColors.secondaryBg),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                alignment: Alignment.topCenter,
                width: double.infinity,
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 35,
                  height: 20,
                  child: SvgPicture.asset('assets/mac-action.svg'),
                ),
              ),
              IconSideMenu(
                svgIconPath: 'assets/home.svg',
                onPressed: () {},
              ),
              IconSideMenu(
                svgIconPath: 'assets/pie-chart.svg',
                onPressed: () {},
              ),
              IconSideMenu(
                svgIconPath: 'assets/clipboard.svg',
                onPressed: () {},
              ),
              IconSideMenu(
                svgIconPath: 'assets/credit-card.svg',
                onPressed: () {},
              ),
              IconSideMenu(
                svgIconPath: 'assets/trophy.svg',
                onPressed: () {},
              ),
              IconSideMenu(
                svgIconPath: 'assets/invoice.svg',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
