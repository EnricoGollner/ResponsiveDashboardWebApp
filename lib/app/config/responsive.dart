import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget desktop;
  final Widget mobile;
  final Widget? tablet;
  final Widget? smallMobile;

  const Responsive({
    super.key,
    required this.desktop,
    required this.mobile,
    this.tablet,
    this.smallMobile,
  });

  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 768;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1200 &&
      MediaQuery.of(context).size.width >= 768;

  static bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= 1200;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    if (size.width >= 1200) {
      return desktop;
    }
    else if (size.width >= 768 && tablet != null) {
      return tablet!;
    }
    else if (size.width >= 376 && size.width <= 768) {
      return mobile;
    } else {
      return smallMobile ?? const Center(child: Text('Tamanho não suportado.'));
    }
  }
}
