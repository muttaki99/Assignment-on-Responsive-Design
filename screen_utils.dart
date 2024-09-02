enum DeviceType { mobile, tablet, desktop }

class ScreenUtils{
  static const double mobMaxSize = 640;
  static const double tabMaxSize = 1008;
  static const double deskMinSize = 1008;

  static DeviceType getDeviceType( double width){
    if(width < ScreenUtils.mobMaxSize){
      return DeviceType.mobile;
    }else if (width > ScreenUtils.mobMaxSize && width < ScreenUtils.tabMaxSize){
      return DeviceType.tablet;
    }

    return DeviceType.desktop;
  }
}

