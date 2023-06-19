import 'package:flutter/material.dart';
import 'package:kimoh/widgets/custom.text.dart';
import 'package:remixicon/remixicon.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  const HomeAppBar({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: CustomText(
          text: "KI",
          fontSize: 22.0,
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.w700),
      shape: const Border(bottom: BorderSide(color: Colors.black12)),
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
                    backgroundColor: Colors.red,
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
      bottom: const TabBar(isScrollable: false, indicatorWeight: 1, tabs: [
        Tab(
          child: Row(
            children: [
              Text("Explorer"),
              SizedBox(
                width: 10.0,
              ),
              Icon(Remix.compass_3_fill)
            ],
          ),
        ),
        Tab(
          child: Row(
            children: [
              Text("Favories"),
              SizedBox(
                width: 10.0,
              ),
              Icon(Remix.heart_fill)
            ],
          ),
        ),
        Tab(
          child: Row(
            children: [
              Text("Mes biens"),
              SizedBox(
                width: 10.0,
              ),
              Icon(
                Remix.building_fill,
                size: 20,
              )
            ],
          ),
        ),
      ]),
      //toolbarHeight: 0.0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
