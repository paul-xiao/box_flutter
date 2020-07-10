import 'package:flutter/material.dart';

class DeviceUtils {
  /**
   * 获取屏幕宽 单位是dp
   */
  static double getScreenWidth(BuildContext context) {
    if (context != null) {
      return MediaQuery.of(context).size.width;
    } else {
      return 0;
    }
  }

  /**
   * 获取屏幕高 单位是dp
   */
  static double getScreenHeight(BuildContext context) {
    if (context != null) {
      return MediaQuery.of(context).size.height;
    } else {
      return 0;
    }
  }

  /**
   * 获取屏幕像素密度
   */
  static double getDevicePixelRatio(BuildContext context) {
    if (context != null) {
      return MediaQuery.of(context).devicePixelRatio;
    } else {
      return 0;
    }
  }

  /**
   * 获取上边距的值。(主要用于刘海屏)
   */
  static double getDeviceTop(BuildContext context) {
    if (context != null) {
      return MediaQuery.of(context).padding.top;
    } else {
      return 0;
    }
  }

  /**
   * 获取下边距的值。(主要用于刘海屏)
   */
  static double getDeviceBottom(BuildContext context) {
    if (context != null) {
      return MediaQuery.of(context).padding.bottom;
    } else {
      return 0;
    }
  }
}
