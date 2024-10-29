import 'package:flutter/material.dart';
import 'package:responsive_web_app/app/config/responsive.dart';
import 'package:responsive_web_app/app/config/size_config.dart';
import 'package:responsive_web_app/app/pages/components/app_bar_action_items_widget.dart';
import 'package:responsive_web_app/app/pages/components/bar_chart_widget.dart';
import 'package:responsive_web_app/app/pages/components/header_widget.dart';
import 'package:responsive_web_app/app/pages/components/history_table.dart';
import 'package:responsive_web_app/app/pages/components/info_card.dart';
import 'package:responsive_web_app/app/pages/components/payment_details_list_widget.dart';
import 'package:responsive_web_app/app/pages/components/sidemenu/side_menu.dart';
import 'package:responsive_web_app/app/style/colors.dart';
import 'package:responsive_web_app/app/style/style.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      key: _drawerKey,
      drawer: const SizedBox(
        width: 100,
        child: SideMenu(),
      ),
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              elevation: 0,
              backgroundColor: AppColors.white,
              leading: IconButton(
                  onPressed: () => _drawerKey.currentState?.openDrawer(),
                  icon: const Icon(Icons.menu, color: AppColors.black)),
              actions: const [
                AppBarActionItemsWidget(),
              ],
            )
          : const PreferredSize(
              preferredSize: Size.zero,
              child: SizedBox(),
            ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context)) const Expanded(
              flex: 1,
              child: SideMenu(),
            ),
            Expanded(
              flex: 10,
              child: SizedBox(
                width: double.infinity,
                height: SizeConfig.screenHeight,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Header(),
                      SizedBox(height: SizeConfig.blockSizeVertical * 4),
                      SizedBox(
                        width: SizeConfig.screenWidth,
                        child: const Wrap(
                          runSpacing: 20,
                          spacing: 20,
                          alignment: WrapAlignment.spaceBetween,
                          children: [
                            InfoCard(
                              icon: 'assets/credit-card.svg',
                              label: 'Transfer via \nCard number',
                              amount: '\$1200',
                            ),
                            InfoCard(
                              icon: 'assets/transfer.svg',
                              label: 'Transfer via \nOnline Banks',
                              amount: '\$500',
                            ),
                            InfoCard(
                              icon: 'assets/bank.svg',
                              label: 'Transfer \nSame Banks',
                              amount: '\$1500',
                            ),
                            InfoCard(
                              icon: 'assets/invoice.svg',
                              label: 'Transfer to \nOther Banks',
                              amount: '\$1500',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical * 4),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              PrimaryText(
                                text: 'Balance',
                                size: 16,
                                fontWeight: FontWeight.w800,
                                color: AppColors.secondary,
                              ),
                              PrimaryText(
                                text: '\$1500',
                                size: 30,
                                fontWeight: FontWeight.w800,
                              ),
                            ],
                          ),
                          PrimaryText(
                            text: 'Past 30 DAYS',
                            size: 16,
                            color: AppColors.secondary,
                          ),
                        ],
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical * 3),
                      const SizedBox(
                        height: 180,
                        child: BarChartWidget(),
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical * 5),

                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PrimaryText(
                            text: 'History',
                            size: 30,
                            fontWeight: FontWeight.w800,
                          ),
                          PrimaryText(
                            text: 'Transaction of last 6 months',
                            size: 16,
                            color: AppColors.secondary,
                          ),
                        ],
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical * 3),
                      const HistoryTable(),
                      if (!Responsive.isDesktop(context)) const PaymentDetailsListWidget()
                    ],
                  ),
                ),
              ),
            ),
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  height: SizeConfig.screenHeight,
                  color: AppColors.secondaryBg,
                  child: const SingleChildScrollView(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                    child: Column(
                      children: [
                        AppBarActionItemsWidget(),
                        PaymentDetailsListWidget(),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
