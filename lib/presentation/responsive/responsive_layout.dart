import 'package:flutter/material.dart';
import 'package:mod_12_assignment_responsive/presentation/responsive/layout_utils.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    required this.desktop,
    this.tablet,
  });

  @override
  Widget build(BuildContext context) {

    final double size = MediaQuery.of(context).size.width;
    final DeviceType deviceType = LayoutUtils.getDeviceType(size);

    if (deviceType == DeviceType.mobile) {
      return mobile;
    } else if (deviceType == DeviceType.tablet) {
      return tablet ?? mobile;
    } else {
      return desktop;
    }
  }
}
