

class TabBarModel{
  String tabTitle;
  bool isSelected;
  String newsUrl;

  TabBarModel({this.tabTitle,this.isSelected=false,this.newsUrl});


  setTabBar(){
    isSelected=!isSelected;
  }

  String getTabTitle(){
    return tabTitle;
  }

  bool getIsTabSelected(){
    return isSelected;
  }

  String getNewsUrl(){
    return newsUrl;
  }


}