import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../translations/languages/pt_BR.dart';
import '../../utils/month.dart';
import '../../widgets/bottom_navigation_bar/my_bottom_navigation_bar.dart';
import '../../widgets/loading/loading.dart';
import 'boleto_controller.dart';
import 'widgets/boleto_history.dart';

class BoletoPage extends StatefulWidget {
  final List<Month> months;

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
          TranslationKeys.boletos.tr,
          style: TextStyle(fontWeight: FontWeight.normal),
        ),
      ),
      body: Obx(
        () => AnimatedSwitcher(
          duration: Duration(milliseconds: 700),
          child: controller.boletosByMonth.isEmpty
              ? Loading()
              : BoletoHistory(
                  tabController: tabController,
                  months: widget.months,
                  boletosByMonth: controller.boletosByMonth,
                ),
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
