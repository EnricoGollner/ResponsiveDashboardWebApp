import 'package:flutter/material.dart';
import 'package:responsive_web_app/app/pages/dashboard_page.dart';
import 'package:responsive_web_app/app/style/colors.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard Web Responsive',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: AppColors.primaryBg,
      ),
      home: DashboardPage(),
    );
  }
}
