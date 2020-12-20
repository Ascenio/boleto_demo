import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../global_widgets/bottom_navigation_bar/my_bottom_navigation_bar.dart';
import 'boleto_controller.dart';
import 'local_widgets/boleto_history.dart';

class BoletoPage extends StatefulWidget {
  final List<String> months;

  const BoletoPage({
    Key key,
    @required this.months,
  }) : super(key: key);

  @override
  _BoletoPageState createState() => _BoletoPageState();
}

class _BoletoPageState extends State<BoletoPage>
    with SingleTickerProviderStateMixin {
  BoletoController controller;
  TabController tabController;

  @override
  void initState() {
    super.initState();
    controller = Get.find<BoletoController>();
    tabController = TabController(vsync: this, length: widget.months.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text(
          'BOLETOS',
          style: TextStyle(fontWeight: FontWeight.normal),
        ),
      ),
      body: BoletoHistory(
        tabController: tabController,
        months: widget.months,
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
