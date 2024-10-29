import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:responsive_web_app/app/config/responsive.dart';
import 'package:responsive_web_app/app/style/colors.dart';
import 'package:responsive_web_app/app/style/fonts.dart';

class BarChartWidget extends StatelessWidget {
  const BarChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
          borderData: FlBorderData(show: false),
          alignment: BarChartAlignment.spaceBetween,
          // axisTitleData: FlAxis(
          //   leftTitle: AxisTitle(reservedSize: 20),
          // ),
          gridData: const FlGridData(
              drawHorizontalLine: true, horizontalInterval: 30),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                reservedSize: 30,
                getTitlesWidget: (value, _) {
                  return Text(
                    _getValue(value),
                    style: chartMiniLabelStyle,
                  );
                },
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  return Text(
                    _getMonthValue(value),
                    style: chartMiniLabelStyle,
                  );
                },
              ),
            ),
          ),
          barGroups: [
            BarChartGroupData(x: 0, barRods: [
              BarChartRodData(
                  toY: 10,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      toY: 90, show: true, color: AppColors.barBg)),
            ]),
            BarChartGroupData(x: 1, barRods: [
              BarChartRodData(
                  toY: 50,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      toY: 90, show: true, color: AppColors.barBg))
            ]),
            BarChartGroupData(x: 2, barRods: [
              BarChartRodData(
                  toY: 30,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      toY: 90, show: true, color: AppColors.barBg))
            ]),
            BarChartGroupData(x: 3, barRods: [
              BarChartRodData(
                  toY: 80,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      toY: 90, show: true, color: AppColors.barBg))
            ]),
            BarChartGroupData(x: 4, barRods: [
              BarChartRodData(
                  toY: 70,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      toY: 90, show: true, color: AppColors.barBg))
            ]),
            BarChartGroupData(x: 5, barRods: [
              BarChartRodData(
                  toY: 20,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      toY: 90, show: true, color: AppColors.barBg))
            ]),
            BarChartGroupData(x: 6, barRods: [
              BarChartRodData(
                  toY: 90,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      toY: 90, show: true, color: AppColors.barBg))
            ]),
            BarChartGroupData(x: 7, barRods: [
              BarChartRodData(
                  toY: 60,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      toY: 90, show: true, color: AppColors.barBg))
            ]),
            BarChartGroupData(x: 8, barRods: [
              BarChartRodData(
                  toY: 90,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      toY: 90, show: true, color: AppColors.barBg))
            ]),
            BarChartGroupData(x: 9, barRods: [
              BarChartRodData(
                  toY: 10,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      toY: 90, show: true, color: AppColors.barBg))
            ]),
            BarChartGroupData(x: 10, barRods: [
              BarChartRodData(
                  toY: 40,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      toY: 90, show: true, color: AppColors.barBg))
            ]),
            BarChartGroupData(x: 11, barRods: [
              BarChartRodData(
                  toY: 80,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      toY: 90, show: true, color: AppColors.barBg))
            ]),
          ]),
      swapAnimationDuration: const Duration(microseconds: 150),
      swapAnimationCurve: Curves.linear,
    );
  }

  String _getValue(double value) {
    if (value == 0) {
      return '0';
    } else if (value == 30) {
      return '30k';
    } else if (value == 60) {
      return '60k';
    } else if (value == 90) {
      return '90k';
    } else {
      return '';
    }
  }

  String _getMonthValue(double value) {
    if (value == 0) {
      return 'JAN';
    } else if (value == 1) {
      return 'FEB';
    } else if (value == 2) {
      return 'MAR';
    } else if (value == 3) {
      return 'APR';
    } else if (value == 4) {
      return 'MAY';
    } else if (value == 5) {
      return 'JUN';
    } else if (value == 6) {
      return 'JUL';
    } else if (value == 7) {
      return 'AUG';
    } else if (value == 8) {
      return 'SEP';
    } else if (value == 9) {
      return 'OCT';
    } else if (value == 10) {
      return 'NOV';
    } else if (value == 11) {
      return 'DEC';
    } else {
      return '';
    }
  }
}
