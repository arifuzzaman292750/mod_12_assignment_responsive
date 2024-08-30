enum DeviceType {
  mobile,
  tablet,
  desktop,
}

class LayoutUtils {
  static const double mobileMaxSize = 640;
  static const double tabletMaxSize = 1008;
  static const double desktopMinSize = 1008;

  static DeviceType getDeviceType(double width) {
    if(width < LayoutUtils.mobileMaxSize) {
      return DeviceType.mobile;
    } else if(width >= LayoutUtils.mobileMaxSize &&
    width < LayoutUtils.tabletMaxSize) {
      return DeviceType.tablet;
    } else {
      return DeviceType.desktop;
    }
  }
}
