import 'package:flutter/material.dart';
import 'package:kimoh/screens/explore/explore.page.dart';
import 'package:kimoh/screens/favorite.page.dart';
import 'package:kimoh/screens/properties.page.dart';
import 'package:kimoh/widgets/home.appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xffFcFcFd),
        appBar: HomeAppBar(height: 100),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: TabBarView(children: [
            ExplorePage(),
            FavoritePage(),
            PropertiesPage(),
            PropertiesPage()
          ]),
        ),
      ),
    );
  }
}
