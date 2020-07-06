import 'package:flutter/material.dart';
import 'package:whats_you/datamodel/tabBarModel.dart';
import 'package:flutter/foundation.dart';
import '../util/appUtil.dart';
import 'package:whats_you/util/appUtil.dart';

class TabBarData extends ChangeNotifier {

  List<TabBarModel> _tabData = [
    TabBarModel(
        tabTitle: 'Latest',
        isSelected: true,
        newsUrl:
            'https://newsapi.org/v2/everything?q=data&apiKey=$newsApiKey'),
    TabBarModel(
        tabTitle: 'Data',
        isSelected: true,
        newsUrl:getNewsUrl('Data')),
  ];




  int bottomIndex = 0;

  int get bottomBarIndex {
    return bottomIndex;
  }

  void setBottomBarIndex({index}) {
    bottomIndex = index;
    notifyListeners();
  }

  int activeIndex = 0;
  void setTabIndex({index}) {
    activeIndex = index;
    notifyListeners();
  }

  int get currentTabIndex {
    return activeIndex;
  }

  int get tabIndexCount {
    return _tabData.length;
  }

  TabBarModel tabBarModel({index}) {
    return _tabData[index];
  }
}
