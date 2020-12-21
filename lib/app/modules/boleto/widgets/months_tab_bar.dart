import 'package:flutter/material.dart';

import '../../../utils/month.dart';

class MonthsTabBar extends StatelessWidget {
  const MonthsTabBar({
    Key key,
    @required this.tabController,
    @required this.months,
  }) : super(key: key);

  final TabController tabController;
  final List<Month> months;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: Theme.of(context).primaryColor,
      indicatorSize: TabBarIndicatorSize.label,
      isScrollable: true,
      controller: tabController,
      physics: BouncingScrollPhysics(),
      tabs: months
          .map(
            (month) => Padding(
              padding: const EdgeInsets.all(4),
              child: Text(
                month.prefix,
                style: Theme.of(context).textTheme.headline6.copyWith(
                      fontWeight: FontWeight.normal,
                      color: Colors.black54,
                    ),
              ),
            ),
          )
          .toList(),
    );
  }
}
