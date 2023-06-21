import 'package:flutter/material.dart';
import 'package:kimoh/widgets/app.logo.dart';
import 'package:remixicon/remixicon.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  const HomeAppBar({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const AppLogo(height: 18),
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Remix.search_line,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    radius: 17,
                    child: Text("J"),
                  )
                ],
              )
            ],
          ),
        ),
      ],
      bottom: const TabBar(isScrollable: true, indicatorWeight: 1, tabs: [
        Tab(
          iconMargin: EdgeInsets.zero,
          child: Row(
            children: [
              Text("Explorer"),
              //Icon(Remix.compass_3_fill)
            ],
          ),
        ),
        Tab(
          iconMargin: EdgeInsets.zero,
          child: Row(
            children: [
              Text("Favories"),
              //Icon(Remix.heart_fill)
            ],
          ),
        ),
        Tab(
          iconMargin: EdgeInsets.zero,
          child: Row(
            children: [
              Text("Mes biens"),
              //Icon(Remix.building_fill,)
            ],
          ),
        ),
        Tab(
          iconMargin: EdgeInsets.zero,
          child: Row(
            children: [
              Text("Mes biens"),
              //Icon(Remix.building_fill,)
            ],
          ),
        ),
      ]),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
