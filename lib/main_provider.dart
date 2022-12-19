import 'package:flutter/material.dart';
import 'package:portfolio_flutter/about.dart';

class MainProvider extends ChangeNotifier {
  double height = 0.0;
  double width = 0.0;
  Widget selectedPage = const AboutPage();

  void setSelectedPage(Widget widget) {
    selectedPage = widget;
    notifyListeners();
  }

  void setHeightWidth(double height, double width) {
    this.width = width;
    this.height = height;
  }

  Widget get getSelectedPage {
    return selectedPage;
  }

  double get getHeight {
    return height;
  }

  double get getWidth {
    return width;
  }
}
