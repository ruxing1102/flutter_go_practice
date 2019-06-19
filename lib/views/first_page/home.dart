import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_go_practice/views/first_page/collection_page.dart';
import 'package:flutter_go_practice/views/first_page/first_page.dart';
import 'package:flutter_go_practice/views/first_page/fourth_page.dart';
import 'package:flutter_go_practice/views/first_page/widget_page.dart';

const int ThemeColor = 0xFFc91B3A;

class AppPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<AppPage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  String appBarTitle = tabData[0]['text'];
  static List tabData = [
    {'text': '首页', 'icon': new Icon(Icons.cake)},
    {'text': '分类', 'icon': new Icon(Icons.apps)},
    {'text': '购物车', 'icon': new Icon(Icons.add_shopping_cart)},
    {'text': '个人中心', 'icon': new Icon(Icons.account_circle)}
  ];
  List<Widget> myTabs = [];

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 4, vsync: this, initialIndex: 0);
    for (int i = 0; i < tabData.length; i++) {
      myTabs.add(new Tab(text: tabData[i]['text'], icon: tabData[i]['icon']));
    }
    controller.addListener(() {
      if (controller.indexIsChanging) {
        _onTabChange();
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('Flutter Practice')),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new FirstPage(),
          new WidgetPage(),
          new CollectionPage(),
          new FourthPage()
        ],
      ),
      bottomNavigationBar: Material(
        color: const Color(0xFFF0EEEF), //底部导航栏主题颜色
        child: SafeArea(
            child: Container(
          height: 65.0,
          decoration: BoxDecoration(
            color: const Color(0xFFF0F0F0),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: const Color(0xFFd0d0d0),
                blurRadius: 3.0,
                spreadRadius: 2.0,
                offset: Offset(-1.0, -1.0),
              ),
            ],
          ),
          child: TabBar(
            tabs: myTabs,
            controller: controller,
            indicatorColor: Theme.of(context).primaryColor,
            indicatorWeight: 3.0,
            labelColor: Theme.of(context).primaryColor,
            unselectedLabelColor: const Color(0xFF8E8E8E),
          ),
        )),
      ),
    );
  }

  void _onTabChange() {
    if (this.mounted) {
      this.setState(() {
        appBarTitle = tabData[controller.index]['text'];
      });
    }
  }
}
