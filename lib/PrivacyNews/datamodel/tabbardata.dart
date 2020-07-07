import 'package:flutter/material.dart';
import 'package:whats_you/PrivacyNews/datamodel/tabBarModel.dart';
import 'package:flutter/foundation.dart';
import 'package:whats_you/PrivacyNews/util/appUtil.dart';

class TabBarData extends ChangeNotifier {

  List<TabBarModel> _tabData = [
    TabBarModel(
        tabTitle: 'Latest',
        isSelected: true,
        newsUrl:
            'https://newsapi.org/v2/everything?q=privacy&apiKey=$newsApiKey'),
    TabBarModel(
        tabTitle: 'Data Privacy',
        isSelected: false,
        newsUrl: getNewsUrl('Privacy')),
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
